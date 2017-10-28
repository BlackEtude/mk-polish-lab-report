\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mk-polish-lab-report}[2017/10/28 University lab report in polish dev version]

% This passes options to the article class 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper]{article}

\usepackage[MeX]{polski}
\usepackage[utf8]{inputenc}

\usepackage{url,enumerate}
\usepackage{algpseudocode, algorithm, mathtools, listings}
\usepackage{booktabs,siunitx}
\usepackage[top=2.7cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{indentfirst}
\usepackage{fancyhdr}

\makeatletter

\def\studentnumber#1{\gdef\@studentnumber{#1}}
\def\@studentnumber{\ClassError{mk-polish-lab-report}{No \noexpand\studentnumber given}{}}


\def\university#1{\gdef\@university{#1}}
\def\@university{\ClassError{mk-polish-lab-report}{No \noexpand\university given}{}}
\def\major#1{\gdef\@major{#1}}
\def\@major{\ClassError{mk-polish-lab-report}{No \noexpand\major given}{}}
\def\topic#1{\gdef\@topic{#1}}
\def\@topic{\ClassError{mk-polish-lab-report}{No \noexpand\topic given}{}}
%\def\coursename#1{\gdef\@coursename{#1}}
%\def\@coursename{\ClassError{mk-polish-lab-report}{No \noexpand\coursename given}{}}
%\def\courseyear#1{\gdef\@courseyear{#1}}
%\def\@courseyear{\ClassError{mk-polish-lab-report}{No \noexpand\courseyear given}{}}
\def\coursegroup#1{\gdef\@coursegroup{#1}}
\def\@coursegroup{\ClassError{mk-polish-lab-report}{No \noexpand\coursegroup given}{}}
\def\tutor#1{\gdef\@tutor{#1}}
\def\@tutor{\ClassError{mk-polish-lab-report}{No \noexpand\tutor given}{}}

\newcommand\studentinfo[3][]{#2&#3&\texttt{#1}}

\newcommand\studentnumbername{numer albumu}
\newcommand\tutorname{prowadzący}
\newcommand\coursegroupname{grupa}

\newcommand\@typesetauthors{%
    {\normalsize
      \begin{tabular}[t]{lrl}%
        \large\strut\ignorespaces\@author
      \end{tabular}\par}%
}
\renewcommand{\and}{\\ \large\strut}

\newcommand\@typesettitle{{\LARGE \@title \par}}

\renewcommand{\maketitle}
{\thispagestyle{empty}\null\noindent{\large\textbf{\@author}}\hfill\ \@date \\
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


\pagestyle{fancy}
\fancyhead[LE,RO]{\small\bfseries \thepage}
\fancyhead[LO]{{\small \@author{} --- \@title, \@topic}}
\fancyfoot{}
%\renewcommand{\headrulewidth}{0.5pt}
%\renewcommand{\footrulewidth}{0pt}
%\addtolength{\headheight}{0.5pt} % pionowy odstęp na kreskę
\fancypagestyle{empty}{%
\setlength{\headsep}{5pt}
  \fancyhf{}% Clear header/footer
  \fancyhead[L]{\@university}% Your journal/note
  \fancyhead[R]{\@major}% Your logo/image
}



\makeatother



