DROP EXTENSION IF EXISTS lantern;
CREATE EXTENSION IF NOT EXISTS vector;

\ir utils/sift1k_vector.sql
CREATE INDEX ON sift_base1k USING hnsw (v vector_l2_ops) WITH (M=5, ef_construction=128);
SET log_error_verbosity = verbose;

-- Note: We drop the Lantern extension and re-create it because Lantern only supports
-- pgvector if it is present on initialization
CREATE EXTENSION lantern;
set enable_seqscan = false;

-- create variables with 4th and 444th vector and find closest 10 IDs to each
SELECT v as v4 FROM sift_Base1k WHERE id = 4 \gset
SELECT v as v44 FROM sift_Base1k WHERE id = 44 \gset
SELECT v as v444 FROM sift_Base1k WHERE id = 444 \gset

SELECT id, ROUND((v <-> :'v4')::numeric, 2) as dist FROM sift_Base1k ORDER BY v <-> :'v4' LIMIT 10;
SELECT id, ROUND((v <-> :'v44')::numeric, 2) as dist FROM sift_Base1k ORDER BY v <-> :'v44' LIMIT 10;
-- Make sure the function does not modify the global hnsw.ef_search
SHOW hnsw.ef_search;
SELECT id, ROUND((v <-> :'v4')::numeric, 2) as v4_dist, ROUND((v <-> :'v44')::numeric, 2) v44_dist
FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), max_dist => 750., debug_output => true, exact => false,
  w1=> 1., col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 1., col2=>'v'::text, vec2=>:'v44'::vector) as v4_weighted_search
LIMIT 100;

SELECT id, ROUND((v <-> :'v4')::numeric, 2) as v4_dist, ROUND((v <-> :'v44')::numeric, 2) v44_dist
FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), max_dist => 750., debug_output => true, exact => true,
  w1=> 1., col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 1., col2=>'v'::text, vec2=>:'v44'::vector) as v4_weighted_search
LIMIT 100;
-- Make sure the function does not modify the global hnsw.ef_search
SHOW hnsw.ef_search;

SELECT *, 0.03 * v4_dist + 0.45 * v44_dist + 0.52 * v444_dist as weighted_dist
 FROM (SELECT id, ROUND((v <-> :'v4')::numeric, 2) as v4_dist, ROUND((v <-> :'v44')::numeric, 2) v44_dist, ROUND((v <-> :'v444')::numeric, 2) v444_dist
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), max_dist => 440., debug_output => true, exact => false,
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
) as v4_weighted_search
LIMIT 100) t;

SELECT *, 0.03 * v4_dist + 0.45 * v44_dist + 0.52 * v444_dist as weighted_dist
 FROM (SELECT id, ROUND((v <-> :'v4')::numeric, 2) as v4_dist, ROUND((v <-> :'v44')::numeric, 2) v44_dist, ROUND((v <-> :'v444')::numeric, 2) v444_dist
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), max_dist => 440., debug_output => true, exact => true,
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
) as v4_weighted_search
LIMIT 100) t;

-- when max_dist is not specified, number of returned values dicreases with smaller ef


SELECT count(*)
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), debug_output => true, exact => true,
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
);

SELECT count(*)
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), exact => false, ef => 100, -- default
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
);

SELECT count(*)
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), exact => false, ef => 10,
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
);

SELECT count(*)
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), exact => false, ef => 5,
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
);

CREATE INDEX ON sift_base1k USING hnsw (v vector_cosine_ops) WITH (M=5, ef_construction=128);
SELECT count(*)
  FROM lantern.weighted_vector_search(CAST(NULL as "sift_base1k"), exact => false, ef => 5, distance_operator => '<=>',
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
);

-- test the API-shortcut helper (should be same as the one above)
SELECT count(*)
  FROM lantern.weighted_vector_search_cos(CAST(NULL as "sift_base1k"), exact => false, ef => 5,
  w1=> 0.03, col1=>'v'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v'::text, vec3=>:'v444'::vector
);

-- Make sure API still works when the table stores real[] for vectors
ALTER TABLE sift_base1k ADD COLUMN v_real real[];
UPDATE sift_base1k SET v_real = v;
-- The next two lines are a workaround of the upstream postgres issue with table-polymorphic (anyelement) functions
CREATE SCHEMA dummy;
DROP SCHEMA dummy;
-- CREATE INDEX ON sift_base1k USING hnsw (v vector_l2_ops) WITH (M=5, ef_construction=128);
CREATE TABLE sift_base1k_2 AS SELECT * FROM sift_base1k;

SELECT count(*)
  FROM lantern.weighted_vector_search_cos(CAST(NULL as "sift_base1k_2"), exact => false, ef => 5,
  w1=> 0.03, col1=>'v_real'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v_real'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v_real'::text, vec3=>:'v444'::vector
);

SELECT count(*)
  FROM lantern.weighted_vector_search_cos(CAST(NULL as "sift_base1k"), exact => false, ef => 5,
  w1=> 0.03, col1=>'v_real'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v_real'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v_real'::text, vec3=>:'v444'::vector
);

-- create non superuser and test the function
SET client_min_messages = WARNING;
-- suppress NOTICE:  role "test_user" does not exist, skipping
DROP USER IF EXISTS test_user;
SET client_min_messages = NOTICE;
CREATE USER test_user WITH PASSWORD 'test_password';
GRANT SELECT ON sift_base1k TO test_user;
GRANT SELECT ON sift_base1k_id_seq TO test_user;

SET ROLE test_user;

SELECT count(*)
  FROM lantern.weighted_vector_search_cos(CAST(NULL as "sift_base1k"), exact => false, ef => 5,
  w1=> 0.03, col1=>'v_real'::text, vec1=>:'v4'::vector,
  w2=> 0.45, col2=>'v_real'::text, vec2=>:'v44'::vector,
  w3=> 0.52, col3=>'v_real'::text, vec3=>:'v444'::vector
);

