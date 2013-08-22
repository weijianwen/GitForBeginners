%==================================================
%% hpcslides.cls for slides in HPC center of SJTU
%% Encoding: UTF-8
%% ==================================================

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{hpcslides}[2013/07/06 v0.1 hpc slide class]
\newif\ifhpc@typeinfo \hpc@typeinfotrue
\DeclareOption{notypeinfo}{\hpc@typeinfofalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions
\LoadClass[ 
xcolor={dvipsnames}, 
hyperref={setpagesize=false, unicode=false, xetex, colorlinks=true, breaklinks=true}
]{beamer}[2005/11/25]

%% Import hpcslides.cfg file
\AtEndOfPackage{\makeatletter\input{hpcslides.cfg}\makeatother}

%% Math
\RequirePackage{amssymb,amsmath}

%% URL
\RequirePackage{url}

%% Graphicx
\RequirePackage{graphicx}

%% XeTeX CJK Package Fonts Specification
\RequirePackage{xeCJK}
\setCJKmainfont{Adobe Heiti Std}

%% fancyvrb
\RequirePackage{fancyvrb}

%% longtable
\RequirePackage{longtable}

% \urlstyle{same}  % don't use monospace font for urls

%% Listings
\RequirePackage{listings}
\lstset{tabsize=4, %
  frame=shadowbox, %把代码用带有阴影的框圈起来
  commentstyle=\color{lightgray},%浅灰色的注释
  rulesepcolor=\color{cyan},%代码块边框为淡青色
  keywordstyle=\color{blue}\bfseries, %代码关键字的颜色为蓝色，粗体
  showstringspaces=false,%不显示代码字符串中间的空格标记
  showspaces=false, %
  stringstyle=\ttfamily, % 代码字符串的特殊格式
  keepspaces=true, %
  % numbers=left,%左侧显示行号
  % stepnumber=1,%
  % numberstyle=\tiny, %行号字体用小号
  basicstyle=\small\ttfamily, %
  flexiblecolumns=true, %
  % breaklines=true, %对过长的代码自动换行
  breakautoindent=true,%
  breakindent=4em, %
  aboveskip=1em, %代码块边框
  fontadjust,
  captionpos=t,
  framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
  xleftmargin=2em,xrightmargin=2em, % 设定listing左右的空白
  texcl=true,
  % 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
  extendedchars=false,columns=flexible,mathescape=false
}

%% Graphpath
\graphicspath{{figure/}{figures/}{logo/}{logos/}{graph/}{graphs}} 

%% Indent
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt plus 2pt minus 1pt}
\setlength{\emergencystretch}{3em}  % prevent overfull lines

\RequirePackage[normalem]{ulem}
% avoid problems with \sout in headers with hyperref:
\pdfstringdefDisableCommands{\renewcommand{\sout}{}}

%% End of file hpcslides.cls
\endinput
