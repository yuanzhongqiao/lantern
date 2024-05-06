<div class="Box-sc-g0xbh4-0 bJMeLZ js-snippet-clipboard-copy-unpositioned" data-hpc="true"><article class="markdown-body entry-content container-lg" itemprop="text"><div class="markdown-heading" dir="auto"><h1 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">💡灯笼</font></font></h1><a id="user-content--lantern" class="anchor" aria-label="永久链接：💡灯笼" href="#-lantern"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><a href="https://github.com/lanterndata/lantern/actions/workflows/build.yaml"><img src="https://github.com/lanterndata/lantern/actions/workflows/build.yaml/badge.svg?branch=main" alt="建造" style="max-width: 100%;"></a>
<a href="https://github.com/lanterndata/lantern/actions/workflows/test.yaml"><img src="https://github.com/lanterndata/lantern/actions/workflows/test.yaml/badge.svg?branch=main" alt="测试" style="max-width: 100%;"></a>
<a href="https://codecov.io/github/lanterndata/lantern" rel="nofollow"><img src="https://camo.githubusercontent.com/27e39db33d07683c36bf74758bbd3a79f656892df4f501a7d280053d48fdd5db/68747470733a2f2f636f6465636f762e696f2f6769746875622f6c616e7465726e646174612f6c616e7465726e2f6272616e63682f6d61696e2f67726170682f62616467652e737667" alt="代码科夫" data-canonical-src="https://codecov.io/github/lanterndata/lantern/branch/main/graph/badge.svg" style="max-width: 100%;"></a>
<a href="https://replit.com/@lanterndata/lantern-playground#.replit" rel="nofollow"><img src="https://camo.githubusercontent.com/14bc939d2eff8a189a48e211c7cb6025a51d2a89812024dba87850604d95a425/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f52756e2532306f6e2d5265706c69742d626c75653f6c6f676f3d7265706c6974" alt="在 Replit 上运行" data-canonical-src="https://img.shields.io/badge/Run%20on-Replit-blue?logo=replit" style="max-width: 100%;"></a></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lantern 是一个开源 PostgreSQL 数据库扩展，用于存储矢量数据、生成嵌入和处理矢量搜索操作。</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">它为向量列提供了一种新的索引类型，</font></font><code>lantern_hnsw</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可以加快</font></font><code>ORDER BY ... LIMIT</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查询速度。</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lantern 构建并使用</font></font><a href="https://github.com/unum-cloud/usearch"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">usearch</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，这是一种最先进的单标头 HNSW 实现。</font></font></p>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">🔧 快速安装</font></font></h2><a id="user-content--quick-install" class="anchor" aria-label="永久链接：🔧 快速安装" href="#-quick-install"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您还没有 PostgreSQL，请使用 Lantern 和</font></font><a href="https://hub.docker.com/r/lanterndata/lantern" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Docker</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">快速入门：</font></font></p>
<div class="highlight highlight-source-shell notranslate position-relative overflow-auto" dir="auto"><pre>docker run --pull=always --rm -p 5432:5432 -e <span class="pl-s"><span class="pl-pds">"</span>POSTGRES_USER=<span class="pl-smi">$USER</span><span class="pl-pds">"</span></span> -e <span class="pl-s"><span class="pl-pds">"</span>POSTGRES_PASSWORD=postgres<span class="pl-pds">"</span></span> -v ./lantern_data:/var/lib/postgresql/data lanterndata/lantern:latest-pg15</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="docker run --pull=always --rm -p 5432:5432 -e &quot;POSTGRES_USER=$USER&quot; -e &quot;POSTGRES_PASSWORD=postgres&quot; -v ./lantern_data:/var/lib/postgresql/data lanterndata/lantern:latest-pg15" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">然后，您可以通过 来连接数据库</font></font><code>postgresql://$USER:postgres@localhost/postgres</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要使用以下命令安装 Lantern </font></font><code>homebrew</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：</font></font></p>
<div class="snippet-clipboard-content notranslate position-relative overflow-auto"><pre class="notranslate"><code>brew tap lanterndata/lantern
brew install lantern &amp;&amp; lantern_install
</code></pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="brew tap lanterndata/lantern
brew install lantern &amp;&amp; lantern_install" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您还可以</font><font style="vertical-align: inherit;">通过</font></font><a href="https://github.com/lanterndata/lantern/releases"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单个</font></font></a><font style="vertical-align: inherit;"></font><code>make install</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"></font><a href="https://replit.com/@lanterndata/lantern-playground#.replit" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">或者，您可以使用Replit</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">一键使用 Lantern </font><font style="vertical-align: inherit;">。</font></font></p>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">🔧 在现有 PostgreSQL 之上从源代码构建 Lantern</font></font></h2><a id="user-content--build-lantern-from-source-code-on-top-of-your-existing-postgresql" class="anchor" aria-label="永久链接：🔧 在现有 PostgreSQL 之上从源代码构建 Lantern" href="#-build-lantern-from-source-code-on-top-of-your-existing-postgresql"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">先决条件：</font></font></p>
<div class="snippet-clipboard-content notranslate position-relative overflow-auto"><pre class="notranslate"><code>cmake version: &gt;=3.3
gcc &amp;&amp; g++ version: &gt;=11 when building portable binaries, &gt;= 12 when building on new hardware or with CPU-specific vectorization
PostgreSQL 11, 12, 13, 14, 15 or 16
Corresponding development package for PostgreSQL (postgresql-server-dev-$version)

</code></pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="cmake version: >=3.3
gcc &amp;&amp; g++ version: >=11 when building portable binaries, >= 12 when building on new hardware or with CPU-specific vectorization
PostgreSQL 11, 12, 13, 14, 15 or 16
Corresponding development package for PostgreSQL (postgresql-server-dev-$version)
" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要在新硬件上或使用特定于 CPU 的矢量化构建 Lantern：</font></font></p>
<div class="snippet-clipboard-content notranslate position-relative overflow-auto"><pre class="notranslate"><code>git clone --recursive https://github.com/lanterndata/lantern.git
cd lantern
mkdir build
cd build
cmake -DMARCH_NATIVE=ON ..
make install
</code></pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="git clone --recursive https://github.com/lanterndata/lantern.git
cd lantern
mkdir build
cd build
cmake -DMARCH_NATIVE=ON ..
make install" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要构建便携式 Lantern 二进制文件：</font></font></p>
<div class="snippet-clipboard-content notranslate position-relative overflow-auto"><pre class="notranslate"><code>git clone --recursive https://github.com/lanterndata/lantern.git
cd lantern
mkdir build
cd build
cmake -DMARCH_NATIVE=OFF ..
make install
</code></pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="git clone --recursive https://github.com/lanterndata/lantern.git
cd lantern
mkdir build
cd build
cmake -DMARCH_NATIVE=OFF ..
make install" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">📖 灯笼的使用方法</font></font></h2><a id="user-content--how-to-use-lantern" class="anchor" aria-label="永久链接：📖 如何使用灯笼" href="#-how-to-use-lantern"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lantern 保留了标准 PostgreSQL 接口，因此它与 PostgreSQL 生态系统中所有您喜欢的工具兼容。</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首先，在 SQL 中启用 Lantern（例如通过</font></font><code>psql</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">shell）</font></font></p>
<div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir="auto"><pre>CREATE EXTENSION lantern;</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="CREATE EXTENSION lantern;" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：运行上述命令后，lantern 扩展仅在当前 postgres 数据库上可用（单个 postgres 实例可能有多个此类数据库）。连接到不同的数据库时，请确保也为新数据库运行上述命令。例如：</font></font></p>
<div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir="auto"><pre><span class="pl-k">CREATE</span> <span class="pl-k">DATABASE</span> <span class="pl-en">newdb</span>;
\c newdb
CREATE EXTENSION lantern;</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="CREATE DATABASE newdb;
\c newdb
CREATE EXTENSION lantern;" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建一个包含向量列的表并添加数据</font></font></p>
<div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir="auto"><pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">small_world</span> (id <span class="pl-k">integer</span>, vector <span class="pl-k">real</span>[<span class="pl-c1">3</span>]);
<span class="pl-k">INSERT INTO</span> small_world (id, vector) <span class="pl-k">VALUES</span> (<span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">'</span>{0,0,0}<span class="pl-pds">'</span></span>), (<span class="pl-c1">1</span>, <span class="pl-s"><span class="pl-pds">'</span>{0,0,1}<span class="pl-pds">'</span></span>);</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="CREATE TABLE small_world (id integer, vector real[3]);
INSERT INTO small_world (id, vector) VALUES (0, '{0,0,0}'), (1, '{0,0,1}');" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过以下方式在表上创建 hnsw 索引</font></font><code>lantern_hnsw</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：</font></font></p>
<div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir="auto"><pre><span class="pl-k">CREATE</span> <span class="pl-k">INDEX</span> <span class="pl-en">ON</span> small_world USING lantern_hnsw (vector);</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="CREATE INDEX ON small_world USING lantern_hnsw (vector);" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">根据您的矢量数据自定义</font></font><code>lantern_hnsw</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">索引参数，例如距离函数（例如</font></font><code>dist_l2sq_ops</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">）、索引构建参数和索引搜索参数。</font></font></p>
<div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir="auto"><pre><span class="pl-k">CREATE</span> <span class="pl-k">INDEX</span> <span class="pl-en">ON</span> small_world USING lantern_hnsw (vector dist_l2sq_ops)
WITH (M<span class="pl-k">=</span><span class="pl-c1">2</span>, ef_construction<span class="pl-k">=</span><span class="pl-c1">10</span>, ef<span class="pl-k">=</span><span class="pl-c1">4</span>, dim<span class="pl-k">=</span><span class="pl-c1">3</span>);</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="CREATE INDEX ON small_world USING lantern_hnsw (vector dist_l2sq_ops)
WITH (M=2, ef_construction=10, ef=4, dim=3);" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">开始查询数据</font></font></p>
<div class="highlight highlight-source-sql notranslate position-relative overflow-auto" dir="auto"><pre><span class="pl-k">SET</span> enable_seqscan <span class="pl-k">=</span> false;
<span class="pl-k">SELECT</span> id, l2sq_dist(vector, ARRAY[<span class="pl-c1">0</span>,<span class="pl-c1">0</span>,<span class="pl-c1">0</span>]) <span class="pl-k">AS</span> dist
<span class="pl-k">FROM</span> small_world <span class="pl-k">ORDER BY</span> vector <span class="pl-k">&lt;</span><span class="pl-k">-</span><span class="pl-k">&gt;</span> ARRAY[<span class="pl-c1">0</span>,<span class="pl-c1">0</span>,<span class="pl-c1">0</span>] <span class="pl-k">LIMIT</span> <span class="pl-c1">1</span>;</pre><div class="zeroclipboard-container">
    <clipboard-copy aria-label="Copy" class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center" data-copy-feedback="Copied!" data-tooltip-direction="w" value="SET enable_seqscan = false;
SELECT id, l2sq_dist(vector, ARRAY[0,0,0]) AS dist
FROM small_world ORDER BY vector <-> ARRAY[0,0,0] LIMIT 1;" tabindex="0" role="button">
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
    <path d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z"></path><path d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z"></path>
</svg>
      <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
    <path d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z"></path>
</svg>
    </clipboard-copy>
  </div></div>
<div class="markdown-heading" dir="auto"><h3 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">关于运算符和运算符类的注释</font></font></h3><a id="user-content-a-note-on-operators-and-operator-classes" class="anchor" aria-label="永久链接：关于运算符和运算符类的注释" href="#a-note-on-operators-and-operator-classes"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lantern 在索引中支持多种距离函数，并且有 2 种运算符模式：</font></font></p>
<ol dir="auto">
<li>
<p dir="auto"><code>lantern.pgvector_compat=TRUE</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（默认）在此模式下，有 3 个可用运算符</font></font><code>&lt;-&gt;</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(l2sq)、</font></font><code>&lt;=&gt;</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(cosine)、</font></font><code>&lt;+&gt;</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(hamming)。</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意，在此模式下，您需要使用正确的运算符才能触发索引扫描。</font></font></p>
</li>
<li>
<p dir="auto"><code>lantern.pgvector_compat=FALSE</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
在此模式下，您只需在创建索引时指定用于列的距离函数。 Lantern 会自动推断用于搜索的距离函数，因此您始终</font></font><code>&lt;?&gt;</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在搜索查询中使用运算符。</font></font></p>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意，在此模式下，该运算</font></font><code>&lt;?&gt;</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">符专门用于索引查找。如果您希望在查询中不使用索引，请直接使用距离函数（例如</font></font><code>l2sq_dist(v1, v2)</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">）</font></font></p>
</li>
</ol>
<blockquote>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要在模式之间切换，请将</font></font><code>lantern.pgvector_compat</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">变量设置为</font></font><code>TRUE</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">或</font></font><code>FALSE</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
</blockquote>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在创建索引期间可以使用四个已定义的运算符类：</font></font></p>
<ul dir="auto">
<li><strong><code>dist_l2sq_ops</code></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：类型的默认值</font></font><code>real[]</code></li>
<li><strong><code>dist_vec_l2sq_ops</code></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：类型的默认值</font></font><code>vector</code></li>
<li><strong><code>dist_cos_ops</code></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：适用类型</font></font><code>real[]</code></li>
<li><strong><code>dist_vec_cos_ops</code></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：适用类型</font></font><code>vector</code></li>
<li><strong><code>dist_hamming_ops</code></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：适用类型</font></font><code>integer[]</code></li>
</ul>
<div class="markdown-heading" dir="auto"><h3 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">指数构建参数</font></font></h3><a id="user-content-index-construction-parameters" class="anchor" aria-label="永久链接：索引构建参数" href="#index-construction-parameters"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><font style="vertical-align: inherit;"></font><code>M</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">、</font></font><code>ef</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">和</font><font style="vertical-align: inherit;">参数</font></font><code>ef_construction</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">控制 HNSW 算法针对您的用例的性能。</font></font></p>
<ul dir="auto">
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">一般来说，</font><font style="vertical-align: inherit;">以召回为代价来降低</font></font><code>M</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">和加快索引创建速度。</font></font><code>ef_construction</code><font style="vertical-align: inherit;"></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">降低</font></font><code>M</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">和</font></font><code>ef</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提高搜索速度并导致更少的共享缓冲区命中，但代价是召回。调整这些参数需要针对您的特定用例进行实验。</font></font></li>
</ul>
<div class="markdown-heading" dir="auto"><h3 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">各种各样的</font></font></h3><a id="user-content-miscellaneous" class="anchor" aria-label="永久链接：其他" href="#miscellaneous"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<ul dir="auto">
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您之前克隆过 Lantern 并且想要更新，请运行</font></font><code>git pull &amp;&amp; git submodule update --recursive</code></li>
</ul>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">⭐️特点</font></font></h2><a id="user-content-️-features" class="anchor" aria-label="永久链接：⭐️ 特点" href="#️-features"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<ul dir="auto">
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">流行用例的嵌入生成（CLIP 模型、Hugging Face 模型、自定义模型）</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">与 pgvector 数据类型的互操作性，因此任何使用 pgvector 的人都可以切换到 Lantern</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过外部索引器创建并行索引</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">能够在数据库服务器外部生成索引图</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">支持在数据库外部和另一个实例内部创建索引，使您可以在不中断数据库工作流程的情况下创建索引。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查看我们所有的辅助功能，以更好地支持您的工作流程</font></font></li>
</ul>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">🏎️ 性能</font></font></h2><a id="user-content-️-performance" class="anchor" aria-label="永久链接：🏎️ 性能" href="#️-performance"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<p dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重要要点：</font></font></p>
<ul dir="auto">
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们跟踪三个关键指标。</font></font><code>CREATE INDEX</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">时间、</font></font><code>SELECT</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">吞吐量和</font></font><code>SELECT</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">延迟。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们在所有这些指标上都匹配或优于 pgvector 和 pg_embedding (Neon)。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们计划继续进行性能改进，以确保我们是性能最佳的数据库。</font></font></li>
</ul>
<p dir="auto">
<a target="_blank" rel="noopener noreferrer nofollow" href="https://camo.githubusercontent.com/505bfb583ba7f8c2e5dffd4350cc6c5d5885a1e4d039f9005c380b81e7774470/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f6c616e7465726e2d626c6f672f312f7468726f7567687075742e706e67"><img alt="灯笼吞吐量" src="https://camo.githubusercontent.com/505bfb583ba7f8c2e5dffd4350cc6c5d5885a1e4d039f9005c380b81e7774470/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f6c616e7465726e2d626c6f672f312f7468726f7567687075742e706e67" width="400" data-canonical-src="https://storage.googleapis.com/lantern-blog/1/throughput.png" style="max-width: 100%;"></a>
<a target="_blank" rel="noopener noreferrer nofollow" href="https://camo.githubusercontent.com/24f1a5de51dab03dce1d8af2fc982148e903729295392f959a04a3b42f10b484/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f6c616e7465726e2d626c6f672f312f6c6174656e63792e706e67"><img alt="灯笼潜伏期" src="https://camo.githubusercontent.com/24f1a5de51dab03dce1d8af2fc982148e903729295392f959a04a3b42f10b484/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f6c616e7465726e2d626c6f672f312f6c6174656e63792e706e67" width="400" data-canonical-src="https://storage.googleapis.com/lantern-blog/1/latency.png" style="max-width: 100%;"></a>
<a target="_blank" rel="noopener noreferrer nofollow" href="https://camo.githubusercontent.com/bc3ee744b9a93589d680b8887c48b127a8f69bc9dcaa86da2800b5945bbe1851/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f6c616e7465726e2d626c6f672f312f6372656174652e706e67"><img alt="灯笼索引创建" src="https://camo.githubusercontent.com/bc3ee744b9a93589d680b8887c48b127a8f69bc9dcaa86da2800b5945bbe1851/68747470733a2f2f73746f726167652e676f6f676c65617069732e636f6d2f6c616e7465726e2d626c6f672f312f6372656174652e706e67" width="400" data-canonical-src="https://storage.googleapis.com/lantern-blog/1/create.png" style="max-width: 100%;"></a>
</p>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">🗺️路线图</font></font></h2><a id="user-content-️-roadmap" class="anchor" aria-label="永久链接：🗺️路线图" href="#️-roadmap"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<ul dir="auto">
<li><font style="vertical-align: inherit;"><a href="https://lantern.dev" rel="nofollow"><font style="vertical-align: inherit;">Lantern 的云托管版本 -在此处</font></a><font style="vertical-align: inherit;">注册</font></font><a href="https://lantern.dev" rel="nofollow"><font style="vertical-align: inherit;"></font></a></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为您的 CPU 量身定制的硬件加速距离指标，可实现更快的查询</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用于构建不同行业应用程序的模板和指南</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更多用于生成嵌入的工具（支持第三方模型 API、更多本地模型）</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">支持版本控制和 A/B 测试嵌入</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">自动调整的索引类型将选择适当的创建参数</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">支持 1 字节和 2 字节向量元素，以及最多 8000 个维度向量 ( </font></font><a href="https://github.com/lanterndata/lantern/pull/19" data-hovercard-type="pull_request" data-hovercard-url="/lanterndata/lantern/pull/19/hovercard"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">PR #19</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> )</font></font></li>
<li><font style="vertical-align: inherit;"><a href="mailto:support@lantern.dev"><font style="vertical-align: inherit;">请通过support@lantern.dev</font></a><font style="vertical-align: inherit;">请求功能</font></font><a href="mailto:support@lantern.dev"><font style="vertical-align: inherit;"></font></a></li>
</ul>
<div class="markdown-heading" dir="auto"><h2 tabindex="-1" class="heading-element" dir="auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">📚 资源</font></font></h2><a id="user-content--resources" class="anchor" aria-label="永久链接：📚 资源" href="#-resources"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path d="m7.775 3.275 1.25-1.25a3.5 3.5 0 1 1 4.95 4.95l-2.5 2.5a3.5 3.5 0 0 1-4.95 0 .751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018 1.998 1.998 0 0 0 2.83 0l2.5-2.5a2.002 2.002 0 0 0-2.83-2.83l-1.25 1.25a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042Zm-4.69 9.64a1.998 1.998 0 0 0 2.83 0l1.25-1.25a.751.751 0 0 1 1.042.018.751.751 0 0 1 .018 1.042l-1.25 1.25a3.5 3.5 0 1 1-4.95-4.95l2.5-2.5a3.5 3.5 0 0 1 4.95 0 .751.751 0 0 1-.018 1.042.751.751 0 0 1-1.042.018 1.998 1.998 0 0 0-2.83 0l-2.5 2.5a1.998 1.998 0 0 0 0 2.83Z"></path></svg></a></div>
<ul dir="auto">
<li><a href="https://github.com/lanterndata/lantern/issues"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">GitHub issues</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> : 报告 Lantern 的错误或问题</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">需要支持吗？联系</font></font><a href="mailto:support@lantern.dev"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">support@lantern.dev</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。我们很乐意解决问题并就如何在您的用例中使用 Lantern 提供建议</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们欢迎社区贡献！请随意提出问题或 PR。如果您联系</font></font><a href="mailto:support@lantern.dev"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">support@lantern.dev</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，我们可以找到适合您的开放问题或项目</font></font></li>
</ul>
</article></div>
