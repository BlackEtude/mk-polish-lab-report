%% Author: Małgorzata Kaczmarczyk ( makacz at op dot pl )
%% Current version can be found on: https://github.com/makacz/mk-polish-lab-report

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mk-polish-lab-report}[2018/02/10 University lab report in polish]

\RequirePackage{ifthen}
\newboolean{Zadanie@Section}

%% This passes options to the article class 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%% Custom class option 
\DeclareOption{zadania}{\setboolean{Zadanie@Section}{true}}
\ProcessOptions\relax

\LoadClass[a4paper]{article}


\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}
\usepackage{indentfirst}
\frenchspacing

\usepackage{url,enumerate}
\usepackage{graphicx}


%% Units, tables and numbers options
\usepackage{booktabs,siunitx}
\sisetup{
	exponent-product=\cdot, 
	%output-decimal-marker = {,} %%uncomment to change decimal separator to ","
}


\usepackage[top=2.7cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
%\usepackage[usenames,dvipsnames]{xcolor}


\usepackage{footnote}

\usepackage{mathrsfs}
\usepackage{bbold}
\usepackage{mathtools}

\usepackage{amsmath, amssymb} % math symbols
\usepackage{multicol}
\usepackage[all]{nowidow}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Captions settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%


\usepackage{titlesec}
\ifthenelse{\boolean{Zadanie@Section}}{%
\titleformat{\section}%
	{\normalfont\Large\bfseries}{Zadanie~\thesection}{1em}{}%
}{}


\renewcommand \thesection       {\arabic{section}.}
\renewcommand \thesubsection    {\thesection \arabic{subsection}.}
\renewcommand \thesubsubsection {\thesubsection \arabic{subsubsection}.}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Itemized environments settings %%%%%%%%%%%%%%%
\usepackage[shortlabels]{enumitem}
%\setlist[enumerate]{itemsep=0pt}
%\setlist[itemize]{itemsep=0pt}
%\setlist[description]{itemsep=0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Captions settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[labelfont={bf,small},textfont=small]{caption}
\usepackage{subcaption}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Algorithm2e package settings
\usepackage[ruled,noline,noend,linesnumbered]{algorithm2e}
\SetAlgorithmName{Algorytm}{algorytm}{Algorytmy}
\DontPrintSemicolon

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Listings settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{listings}
\renewcommand\lstlistingname{Kod źródłowy}
\lstset{
  basicstyle=\ttfamily\small,
  frame=tb, framerule=1pt, framexleftmargin=1pt,
  showstringspaces=false,
  numbers=left,
    stepnumber=1,
    showstringspaces=false,
    tabsize=2,
    breaklines=true,
    breakatwhitespace=true
}

\lstset{literate=
	{ż}{{\.{z}}}1	{ź}{{\'{z}}}1
	{ć}{{\'{c}}}1	{ń}{{\'{n}}}1
	{ą}{{\c a}}1	{ś}{{\'{s}}}1
	{ł}{{\l}}1		{ę}{{\c{e}}}1
	{ó}{{\'{o}}}1	{á}{{\'a}}1
	{é}{{\'e}}1		{í}{{\'i}}1
	{ó}{{\'o}}1		{ú}{{\'u}}1
	{ù}{{\`u}}1		{Á}{{\'A}}1
	{É}{{\'E}}1		{Í}{{\'I}}1
	{Ó}{{\'O}}1		{Ú}{{\'U}}1
	{à}{{\`a}}1		{è}{{\'e}}1
	{ì}{{\`i}}1		{ò}{{\`o}}1
	{ò}{{\`o}}1		{À}{{\`A}}1
	{È}{{\'E}}1		{Ì}{{\`I}}1
	{Ò}{{\`O}}1		{Ò}{{\`O}}1
	{ä}{{\"a}}1		{ë}{{\"e}}1
	{ï}{{\"i}}1		{ö}{{\"o}}1
	{ü}{{\"u}}1		{Ä}{{\"A}}1
	{Ë}{{\"E}}1		{Ï}{{\"I}}1
	{Ö}{{\"O}}1		{Ü}{{\"U}}1
	{â}{{\^a}}1		{ê}{{\^e}}1
	{î}{{\^i}}1		{ô}{{\^o}}1
	{û}{{\^u}}1		{Â}{{\^A}}1
	{Ê}{{\^E}}1		{Î}{{\^I}}1
	{Ô}{{\^O}}1		{Û}{{\^U}}1
	{œ}{{\oe}}1		{Œ}{{\OE}}1
	{æ}{{\ae}}1		{Æ}{{\AE}}1
	{ß}{{\ss}}1		{ç}{{\c c}}1
	{Ç}{{\c C}}1	{ø}{{\o}}1
	{å}{{\r a}}1	{Å}{{\r A}}1
	{€}{{\EUR}}1	{£}{{\pounds}}1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% References settings %%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{hyperref}
\usepackage[capitalise, noabbrev, nameinlink]{cleveref}
\crefname{algorithm}{algorytm}{algorytmy}
\Crefname{algorithm}{Algorytm}{Algorytmy}
\crefname{listing}{kod źródłowy}{kody źródłowe}
\crefname{listing}{kod źródłowy}{kody źródłowe}
\crefname{table}{\tablename}{tabele}
\Crefname{table}{\tablename}{Tabele}
\crefname{equation}{równanie}{równania}
\Crefname{equation}{Równanie}{Równania}
\crefname{figure}{rysunek}{rysunki}
\Crefname{figure}{Rysunek}{Rysunki}

\ifthenelse{\boolean{Zadanie@Section}}{%
\crefname{section}{zadanie}{zadania}
\Crefname{section}{Zadanie}{Zadania}
}{%
\crefname{section}{sekcja}{sekcje}
\Crefname{section}{Sekcja}{Sekcje}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Theorems settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{amsthm}
\theoremstyle{definition}
\newtheorem{theorem}{Twierdzenie}
\newtheorem{lemma}{Lemat}
\newtheorem{example}{Przykład}
\newtheorem{corollary}{Wniosek}
\newtheorem{definition}{Definicja}
\newtheorem*{theorem*}{Twierdzenie}
\newtheorem*{lemma*}{Lemat}
\newtheorem*{example*}{Przykład}
\newtheorem*{corollary*}{Wniosek}
\newtheorem*{definition*}{Definicja}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Title page formatting %%%%%%%%%%%%%%%%%%%%%%%%


\makeatletter

\def\studentnumber#1{\gdef\@studentnumber{#1}}
\def\@studentnumber{\ClassError{mk-polish-lab-report}{No \noexpand\studentnumber given}{}}
\def\university#1{\gdef\@university{#1}}
\def\@university{\ClassError{mk-polish-lab-report}{No \noexpand\university given}{}}
\def\major#1{\gdef\@major{#1}}
\def\@major{\ClassError{mk-polish-lab-report}{No \noexpand\major given}{}}
\def\topic#1{\gdef\@topic{#1}}
\def\@topic{\ClassError{mk-polish-lab-report}{No \noexpand\topic given}{}}
\def\tutor#1{\gdef\@tutor{#1}}
\def\@tutor{\ClassError{mk-polish-lab-report}{No \noexpand\tutor given}{}}

\newcommand\studentnumbername{numer albumu}
\newcommand\tutorname{prowadzący}
\newcommand\coursegroupname{grupa}

\renewcommand{\maketitle}
{\thispagestyle{titlepage}\null\noindent{\large\textbf{\@author}}\hfill\ \@date \\
\null\studentnumbername : {\@studentnumber} \hfill \tutorname : \@tutor \\\hrule{\hspace{\textwidth}} \\
\vskip \baselineskip
\begin{center}
\begin{Huge}
\textsc{\@title}
\end{Huge}\\\vskip \baselineskip
\begin{LARGE}
\@topic
\end{LARGE}
\end{center}
\par
\vskip 1\baselineskip
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Headers & Footers formatting %%%%%%%%%%%%%%%%%

\usepackage{fancyhdr}

\pagestyle{fancy}
\if@twoside
\fancyhead[LE,RO]{\small\bfseries \thepage}
\fancyhead[RE]{{\small \@author{}}}
\fancyhead[LO]{\@title, \@topic}
\else
\fancyhead[R]{\small\bfseries \thepage}
\fancyhead[L]{\small \@author{} --- \@title, \@topic}
\fi

\fancyfoot{}
\renewcommand{\footrulewidth}{0pt}

% First page
\fancypagestyle{titlepage}{%
\setlength{\headsep}{5pt}
  \fancyhf{}
  \fancyhead[L]{\@university}
  \fancyhead[R]{\@major}
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

