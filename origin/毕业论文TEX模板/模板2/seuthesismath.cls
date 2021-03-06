%% seuthesismath.cls,
%% 是在东南大学seuthesis.cls模板基础上加以修改而成，适合数学系使用
%% 
 \NeedsTeXFormat{LaTeX2e}[1999/12/01]
 \ProvidesClass{seuthesismath}[2010/12/20 1.0.0 The LaTeX template for thesis of Dept. Math,Southeast University]
 \typeout{Document Class `seuthesismath' v1.0.0 by Wang Feng (2010/12/20)}
\newif\ifbachelordegree\bachelordegreefalse
\newif\ifmasterdegree\masterdegreetrue
\newif\ifengineering\engineeringfalse
\DeclareOption{bachelor}{\bachelordegreetrue}
\DeclareOption{master}{\masterdegreetrue}
\DeclareOption{engineering}{\engineeringtrue\masterdegreetrue}
\DeclareOption{doctor}{\masterdegreefalse}
\newif\ifnocolorlinks\nocolorlinksfalse
\DeclareOption{nocolorlinks}{\nocolorlinkstrue}
\newif\ifdoublecover\doublecoverfalse
\DeclareOption{doublecover}{\doublecovertrue}
\DeclareOption{printedition}{\doublecovertrue\nocolorlinkstrue}
\newif\ifstoneside\stonesidefalse
\DeclareOption{printoneside}{%
  \PassOptionsToClass{openany}{scrbook}
  \stonesidetrue
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions
\LoadClass[a4paper,10.5pt,tablecaptionabove]{scrbook}
\let\todayeng\today
\RequirePackage{doc}
\RequirePackage{keyval}
\RequirePackage{}
\RequirePackage{ifthen}

\RequirePackage{graphicx}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{indentfirst}
\RequirePackage{makeidx} % 索引
\RequirePackage[nottoc]{tocbibind} % 将参考文献、索引、表格目录和图形
\RequirePackage[numbers,sort&compress]{natbib} % 修改引用参考文献格式
\RequirePackage{array} % 扩展了 array 和 tabular 环境功能
\RequirePackage{caption} % 定义图的标题格式：居中. 使用caption3.0
\captionsetup{%
  format=plain,%
  labelformat=simple,%
  justification=centering,%
  singlelinecheck=off}
\RequirePackage{paralist}% 修改列表格式
\setdefaultenum{1)}{a)}{i.}{A.}% 设置列表模式
\setdefaultleftmargin{4ex}{}{}{}{}{}
\RequirePackage[CJKnumber,slantfont,boldfont]{xeCJK}
\newlength\CJK@twochars
\def\CJK@spaceChar{\Unicode{48}{7}}
\def\CJKindent{%
    \settowidth\CJK@twochars{\CJK@spaceChar\CJK@spaceChar}%
    \parindent\CJK@twochars}

%\ifpdf
\RequirePackage{hyperref}
%\else %配置dvipdfmx
%\RequirePackage[dvipdfmx]{hyperref}
%\fi
\hypersetup{unicode=true}
\AtBeginDocument{\CJKindent{}%
    \InputIfFileExists{seuthesis-utf8.cfg}% 引入配置文件
    {\typeout{[seuthesis]: Load seuthesis-utf8.cfg successfully!}}%
    {\typeout{[seuthesis]: Load seuthesis-utf8.cfg failed!}}%
    \makeindex%
    \wuhao%
    \linespacing{\mainlineskip}
  }
\AtEndDocument{}
\RequirePackage{CJKnumb}
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
\RequirePackage[pagestyles, rm]{titlesec}
\RequirePackage{titletoc} % 设置目录
\hypersetup{bookmarksnumbered=true}%书签中章节编号
\setCJKmainfont{SimSun}
\setCJKfamilyfont{zhsong}{SimSun}
\newcommand{\song}{\CJKfamily{zhsong}}
\setCJKfamilyfont{zhhei}{SimHei}
\newcommand{\hei}{\CJKfamily{zhhei}}
\setCJKfamilyfont{zhkai}{KaiTi_GB2312}
\newcommand{\kai}{\CJKfamily{zhkai}}
\setCJKfamilyfont{zhfs}{FangSong_GB2312}
\newcommand{\fs}{\CJKfamily{zhfs}}
\setmainfont{Times New Roman}% 英文默认Time New Roman
\newcommand{\chuhao}{\fontsize{42pt}{46pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{40pt}\selectfont}
\newcommand{\yichu}{\fontsize{32pt}{36pt}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{32pt}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{24pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{20}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{18pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{16pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{14pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{13pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{11pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{7.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{6.5pt}\selectfont}
\setlength{\parskip}{0pt}% 段距
\newcommand{\mainlineskip}{1.3}% 主行距1.3
\titlespacing{\section}{0pt}{3.5ex plus .05ex minus .01ex}{2.9ex plus .04ex} % 标题间距
\titlespacing{\subsection}{0pt}{3ex plus .05ex minus .01ex}{2ex plus .04ex}
\titlespacing{\subsubsection}{0pt}{1.5ex plus .05ex minus .01ex}{1ex plus .01ex}
\newcommand{\linespacing}[1]{\linespread{#1}\selectfont}% 行距命令
\newcommand{\stcleardp}{%
  \ifstoneside
  \clearpage
  \else
  \cleardoublepage
  \fi
}
\ifnocolorlinks
\hypersetup{colorlinks=false}
\else
\hypersetup{colorlinks=true}
\fi
\hypersetup{
  linkcolor=blue,
  anchorcolor=black,
  citecolor=olive,
  filecolor=magenta,
  menucolor=red,
  urlcolor=magenta
}
\newpagestyle{seustyle}{
  \sethead[][{\song{}\xiaowuhao{}东南大学\@degree{}学位论文}][] % 偶数页
  {}{{\song{}\xiaowuhao{}\chaptertitlename\quad\chaptertitle}}{} % 奇数页
  \setfoot{}{\thepage}{}
  \headrule
}
\newpagestyle{seufrontstyle}{
  \sethead[][{\song{}\xiaowuhao{}东南大学\@degree{}学位论文}][]
  {}{{\song{}\xiaowuhao{}东南大学\@degree{}学位论文}}{}
  \setfoot{}{\thepage}{}
  \headrule
}
\newpagestyle{seunolabelstyle}{
  \sethead[][{\song{}\xiaowuhao{}东南大学\@degree{}学位论文}][]
  {}{{\song{}\xiaowuhao{}\chaptertitle}}{}
  \setfoot{}{\thepage}{}
  \headrule
}
\renewpagestyle{plain}{
  \setfoot{}{\thepage}{}
}
\renewcommand{\author}[2]{
  \def\@author{#1}
  \newcommand{\@authoreng}{#2}
}
\newcommand{\@titleeng}{}
\newcommand{\@subtitleeng}{}
\renewcommand{\title}[4]{
  \def\@title{#1}
  \renewcommand{\@subtitle}{#2}
  \renewcommand{\@titleeng}{#3}
  \renewcommand{\@subtitleeng}{#4}
}
\newcommand{\@advisorname}{}
\newcommand{\@advisortitle}{}
\newcommand{\@advisornameeng}{}
\newcommand{\@advisortitleeng}{}
\newcommand{\advisor}[4]{
  \renewcommand{\@advisorname}{#1}
  \renewcommand{\@advisortitle}{#2}
  \renewcommand{\@advisornameeng}{#3}
  \renewcommand{\@advisortitleeng}{#4}
}
\newif\ifbcoadvisor\bcoadvisorfalse
\newcommand{\@coadvisorname}{}
\newcommand{\@coadvisortitle}{}
\newcommand{\@coadvisornameeng}{}
\newcommand{\@coadvisortitleeng}{}
\newcommand{\coadvisor}[4]{
  \bcoadvisortrue
  \renewcommand{\@coadvisorname}{#1}
  \renewcommand{\@coadvisortitle}{#2}
  \renewcommand{\@coadvisornameeng}{#3}
  \renewcommand{\@coadvisortitleeng}{#4}
}
\newcommand{\@categorynumber}{}
\newcommand{\categorynumber}[1]{\renewcommand{\@categorynumber}{#1}}
\newcommand{\@secretlevel}{}
\newcommand{\secretlevel}[1]{\renewcommand{\@secretlevel}{#1}}
\newcommand{\@UDC}{}
\newcommand{\UDC}[1]{\renewcommand{\@UDC}{#1}}
\newcommand{\@studentid}{}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}
\newcommand{\degree}[1]{
  \renewcommand{\@appdegree}{#1}
}
\newcommand{\@majorlen}{8em}
\newcommand{\@major}{}
\newcommand{\major}[2][8em]{
  \renewcommand{\@majorlen}{#1}
  \renewcommand{\@major}{#2}
}
\newcommand{\@department}{}
\newcommand{\@departmenteng}{~}
\newcommand{\department}[2]{
  \renewcommand{\@department}{#1}
  \renewcommand{\@departmenteng}{#2}
}
\newcommand{\@submajor}{}
\newcommand{\submajor}[1]{
  \renewcommand{\@submajor}{#1}
}
\newcommand{\@defenddate}{}
\newcommand{\defenddate}[1]{\renewcommand{\@defenddate}{#1}}
\newcommand{\authorizeorganization}[1]{
  \renewcommand{\@authorizeorganization}{#1}
}
\newcommand{\@authorizedate}{}
\newcommand{\authorizedate}[1]{\renewcommand{\@authorizedate}{#1}}
\newcommand{\@committeechair}{}
\newcommand{\committeechair}[1]{\renewcommand{\@committeechair}{#1}}
\newcommand{\@readerA}{}
\newcommand{\@readerB}{}
\newcommand{\reader}[2]{
  \renewcommand{\@readerA}{#1}
  \renewcommand{\@readerB}{#2}
}
\newcommand{\@duration}{}
\newcommand{\duration}[1]{\renewcommand{\@duration}{#1}}
\newcommand{\@address}{}
\newcommand{\address}[1]{\renewcommand{\@address}{#1}}
\renewcommand{\maketitle}{
  %
  % 设置书签
  % Note: The `CJKbookmarks' option should only be used for bookmarks
  % *not* in Unicode.
  \GetFileInfo{seuthesis.cls} % get the correct fileversion
  \hypersetup{
    pdfauthor={\@author},
    pdftitle={\universityname{}\@academicdegree}, %文件标题
    pdfsubject={\@title \@subtitle}, %文件主题
    pdfcreator={The \seuthesis{} class (v \fileversion)} % 应用程序
  }

  \pagestyle{empty}
  \ifdoublecover
  \stcleardp
  \else\fi
  \chinesecover

  \ifbachelordegree
  \frontmatter
  \else
  \ifdoublecover
  \stcleardp
  \else\fi
  \englishcover % 英文封面
  \frontmatter % 开始正文之前的部分
  \pagestyle{seufrontstyle}\clearpage
  \thispagestyle{seufrontstyle}
  \seudeclare % 独创性和使用授权声明
  \fi
}
\newcommand{\seuthesis}{%
  S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
  \textsc{Thesis}
}
\let\orig@emph=\emph
\renewcommand{\emph}[1]{{\orig@emph{\kai#1}}}
\newcommand{\CoverTopOption}[3][s]{
  \makebox[1.5cm][#1]{\wuhao #2}:{
    \underline{\makebox[1.5cm][c]{\wuhao #3}}}
}

\newcommand{\CoverBottomOption}[3][4.5cm]{
  \makebox[7cm][s]{
    {\song\sihao#2} %宋体四号
    \underline{\makebox[#1][c]{\hei\sihao#3}} %黑体四号粗体
  }
}

\newcommand{\chinesecover}{
  \begin{titlepage}
    \linespacing{1.0}
    \begin{picture}(0,0)(24,250)
      {\includegraphics[width=\textwidth,bb=0 0 1683 986]{figures/front-cover.jpg}}
    \end{picture}
    \ifengineering
    \begin{picture}(0,0)(-70,255)
      {\includegraphics[height=30pt,bb=0 0 484 55]{figures/engineering.png}}
    \end{picture}
    \else
    \begin{picture}(0,0)(-86,255)
      \ifmasterdegree
      \def\@degreepic{master}
      \else
      \def\@degreepic{doctor}
      \fi
      {\includegraphics[height=40pt,bb=0 0 1149 150]{figures/{\@degreepic}.png}}
    \end{picture}
    \fi
    \begin{picture}(0,0)(-350,50)
      {\includegraphics[width=50pt,bb=0 0 500 501]{figures/seu-color-logo.png}}
    \end{picture}

    \begin{tabular}{l}
      \CoverTopOption{\schoolcodepre}{\schoolcode} \\
      \CoverTopOption{\categorynumberpre}{\@categorynumber} \\
      \CoverTopOption{\secretlevelpre}{\@secretlevel}\\
      \CoverTopOption{U D C}{\@UDC} \\
      \CoverTopOption{\studentidpre}{\@studentid}
    \end{tabular}

    \vspace*{7cm}

    \begin{center}
      \linespacing{1.25}
      \yihao\hei\@title\\%题名 黑体一号居中
      \yihao\hei\@subtitle%副题名 黑体一号居中
    \end{center}

    \vspace*{20pt}

    \renewcommand{\arraystretch}{2.0}
    \setlength{\tabcolsep}{0pt}
    \begin{center}
      \begin{tabular}{cr}
        \makebox[3.5cm][s]{\xiaoerhao\song\authorpre} &%宋体小二
        \underline{\makebox[6cm][s]{
            \hspace*{1cm}
            \makebox[2.5cm][c]{\xiaoerhao\hei\@author}
            \makebox[2cm][r]{}}} \\%黑体小二粗体
        \makebox[3.5cm][s]{\xiaoerhao\song\advisorpre} &
        \underline{\makebox[6cm][s]{
            \hspace*{1cm}
            \makebox[2.5cm][c]{\xiaoerhao\hei\@advisorname}
            \makebox[2cm][r]{\xiaoerhao\hei\@advisortitle}}}
        \\
        &
        \ifbcoadvisor
        \underline{\makebox[6cm][s]{
            \hspace*{1cm}
            \makebox[2.5cm][c]{\xiaoerhao\hei\@coadvisorname}
            \makebox[2cm][r]{\xiaoerhao\hei\@coadvisortitle}}}
        \else
        \fi \\
      \end{tabular}
    \end{center}

    \vspace*{10pt}

    \setlength{\tabcolsep}{10pt}
    \begin{center}
      \begin{tabular}{ll}
        \CoverBottomOption{\appdegreepre}{\@appdegree} &
        \CoverBottomOption{\authorizeorganizationpre}{\@authorizeorganization} \\
        \CoverBottomOption{\majorpre}{\@major} &
        \CoverBottomOption{\defenddatepre}{\@defenddate}\\
        \CoverBottomOption{\submajorpre}{\@submajor} &
        \CoverBottomOption{\authorizedatepre}{\@authorizedate}\\
        \CoverBottomOption[4cm]{\committeechairpre}{\@committeechair} &
        \CoverBottomOption{\readerpre}{\@readerA}\\
        & \CoverBottomOption{\makebox[3cm]{}}{\@readerB}
      \end{tabular}
    \end{center}

    \vfill

    {\song\sihao\centerline{\today} \par}

  \end{titlepage}
}
\ifbachelordegree % 本科论文封面
\renewcommand{\chinesecover}{
  \begin{titlepage}
    \linespacing{1.0}
    \begin{center}
      \vspace*{20pt}
      \includegraphics[height=2cm]{figures/seu-badge-logo}
      \quad \includegraphics[height=2cm]{figures/seu-text-logo} \\
      \vspace*{60pt}
      \yihao\hei \bachelortitle \\
      \vspace*{60pt}
      {\xiaoerhao\song \titlepre}
      {\erhao\song \underline{\makebox[18em][c]{\fs\@title}}} \\
      \vspace*{40pt}
      \renewcommand{\arraystretch}{1.5}
      \setlength{\tabcolsep}{0pt}
      \begin{tabular}{clcl}
        \sanhao\fs
        \underline{\makebox[8em][s]{\makebox[8em][c]{\@department}}} &
        \sanhao
        \departmentpre &
        \sanhao\fs
        \underline{\makebox[\@majorlen][s]{\makebox[\@majorlen][c]{\@major}}} &
        \sanhao \majorpre \\
      \end{tabular}

      \vspace*{70pt}

      \renewcommand{\arraystretch}{1.1}
      \setlength{\tabcolsep}{0pt}
      \begin{tabular}{c}
        \sanhao\studentidpre\quad\underline{%
          \makebox[20em][s]{\makebox[20em][c]{%
              \textsf{\@studentid}}}} \\
        \sanhao\studentnamepre\quad\underline{\makebox[20em][s]{%
            \makebox[20em][c]{\fs{\@author}}}} \\
        \sanhao\advisorpre\quad\underline{\makebox[20em][s]{%
            \makebox[20em][c]{\fs{\@advisorname}}}}%
        \\
        \ifbcoadvisor
        \sanhao\coadvisorpre\quad\underline{\makebox[20em][s]{%
            \makebox[20em][c]{\fs{\@coadvisorname}}}}\\%
        \fi
        \sanhao\durationpre\quad\underline{\makebox[20em][s]{
            \makebox[20em]{\textsf{\@duration}}}} \\
        \sanhao\addresspre\quad\underline{\makebox[20em][s]{
            \makebox[20em][c]{\fs{\@address}}}} \\
      \end{tabular}
      \vfill
      {\sanhao\today \par}
    \end{center}
  \end{titlepage}
}
\fi
\newcommand{\englishcover}{
  \thispagestyle{empty}%
  \begin{center}
      \linespacing{1.0}
      ~\\
      {\linespacing{1.5}\LARGE\textrm{\@titleeng} \par}%
      \vspace*{7mm}
      \normalsize{\@subtitleeng}

      \vspace{1.0in}%
      {\large
        {A Dissertation Submitted to}\\
        {\universitynameeng}\\
        {For the Academic Degree of \academicdegreeeng}\\
        {\vspace{0.5in}}%
        {BY}\\
        {\@authoreng}\\
        {\vspace{0.5in}}%
        {Supervised by:}\\
        {\@advisortitleeng\  \@advisornameeng}\\
        \ifbcoadvisor
        {and}\\
        {\@coadvisortitleeng\  \@coadvisornameeng}\\
        \else
        \fi
        {\vspace{0.5in}}%
        {\vfill}
        {\@departmenteng}\\
        {\universitynameeng}\\
        {\todayeng}
        \par
      }%
    \end{center}%
  \clearpage%
}
\newenvironment{abstract}[1]
{
  \newcommand{\@keywords}{#1}
  \hypersetup{pdfkeywords={\@keywords}}
  \stcleardp
  \phantomsection
  \addcontentsline{toc}{chapter}{\@abstracttitletoc}
  \ifbachelordegree
  \chapter*{\@title}

  \begin{flushright}
    \begin{tabular}[h]{ll}
      \@studentid & \kai\@author \\
      \advisorpre & \kai\@advisorname \\
    \end{tabular}
  \end{flushright}

  \begin{center}
    \Large \hei\@abstracttitle
  \end{center}
  \par
  \else
  \chapter*{\@abstracttitle}
  \fi
  \song
  \ifbachelordegree
  \xiaosihao
  \else
  \wuhao
  \fi
}{
  \par
  \begin{description}
  \item[关键词：] \@keywords
  \end{description}
}
\newenvironment{englishabstract}[1]
{
  \newcommand{\@keywords}{#1}
  \stcleardp
  \phantomsection
  \addcontentsline{toc}{chapter}{Abstract}
  \ifbachelordegree
  \chapter*{\@titleeng}
  \begin{flushright}
    \begin{tabular}[h]{l}
      \@studentid \qquad \@authoreng \\
      \@advisornameeng \\
    \end{tabular}
  \end{flushright}
  \begin{center}
    {\Large Abstract}
  \end{center}
  \par
  \else
  \chapter*{Abstract}
  \fi
  \song
  \ifbachelordegree
  \xiaosihao
  \else
  \wuhao
  \fi
}{
  \par
  \begin{description}
  \item[Keywords:] \@keywords
  \end{description}
}
\newenvironment{terminology}[1][\@terminologytitle]
{
  \stcleardp
  \phantomsection
  \addcontentsline{toc}{chapter}{#1}
  \chapter*{#1}
  \song\wuhao
}{
  \par
}
\newenvironment{Main}
{
  \stcleardp
  {\linespacing{1.15}%
  \song\xiaosihao%
  \phantomsection
  \addcontentsline{toc}{chapter}{\@contentsnametoc}
  \tableofcontents \par
  \pagestyle{seunolabelstyle}\clearpage} %目录部分字体可采用小四号宋体。

  \pagestyle{seustyle}
  \mainmatter % 开始正文部分
  \song
  \ifbachelordegree
  \xiaosihao
  \else
  \wuhao
  \fi
}{
  \par
  \backmatter % 开始正文之后的部分
}
\renewcommand{\textfraction}{0.07}
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\renewcommand{\floatpagefraction}{0.85}
\setcounter{totalnumber}{6}
\let\originalcite=\cite
\renewcommand{\cite}[1]{\textsuperscript{\originalcite{#1}}}
\renewcommand{\citet}[1]{\originalcite{#1}}
\bibliographystyle{seuthesis}
\renewcommand\@biblabel[1]{#1}  % Reference list option change from [1] to 1
\let\orig@bibliography=\bibliography
\renewcommand{\bibliography}[1]{
  \orig@bibliography{#1}
  \pagestyle{seunolabelstyle}\clearpage % 使参考文献使用 seunolabel 页面样式
  \pagestyle{seufrontstyle}} % 恢复原有样式给后续部分
\newenvironment{Thanks}[1][\@thankstitle]
{%
  \stcleardp
  \phantomsection
  \addcontentsline{toc}{chapter}{\@thankstitletoc}
  \chapter*{#1}
  \song\wuhao
}{\par}
\newenvironment{Appendix}
{%
  \pagestyle{seustyle}
  \@mainmattertrue
  \appendix
  \titlecontentsappendix
}{\@mainmatterfalse\par
  \thispagestyle{seustyle}\clearpage
}
\newenvironment{Resume}[1][\@resumetitle]
{%
  \stcleardp
  \phantomsection
  \addcontentsline{toc}{chapter}{\@resumetitletoc}
  \chapter*{#1}
  \song\wuhao
}{\par}
\newcommand{\backcover}{
  \pagestyle{empty}
  \clearpage
  \begin{picture}(0,0)(20,650)
    {\includegraphics[width=\textwidth,bb=0 0 2424 3508]{figures/back-cover.png}}
  \end{picture}
}
\ifbachelordegree
\renewcommand{\backcover}{}
\fi


\endinput
%%
%% End of file `seuthesis.cls'.
