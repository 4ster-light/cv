% ATS-friendly single-column resume class.
% Layout inspired by Jake's Resume, adapted for A4 and Spanish/English CVs.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ats-resume}[2026/11/09 ATS-friendly resume class]

\LoadClass[11pt,a4paper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage[a4paper,left=0.6in,right=0.6in,top=0.45in,bottom=0.45in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\definecolor{accent}{HTML}{0F766E}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=accent,
  urlcolor=accent,
  pdfborder={0 0 0}
}
\RequirePackage{iftex}

\ifPDFTeX
  \input{glyphtounicode}
  \pdfgentounicode=1
\fi

\pagestyle{empty}
\raggedright
\raggedbottom
\setlength{\parindent}{0pt}
\setlength{\tabcolsep}{0pt}
\urlstyle{same}

% Section headings: bold text plus a thin accent rule.
\titleformat{\section}
  {\large\bfseries}
  {}{0em}{}
  [\vspace{-0.45em}{\color{accent}\rule{\linewidth}{0.8pt}}]
\titlespacing*{\section}{0pt}{0.7em}{0.3em}

% Header
\newcommand{\resumeName}[1]{{\Huge\bfseries #1\par}}
\newcommand{\resumeTitle}[1]{\vspace{0.1em}{\large #1\par}}
\newcommand{\resumeContact}[1]{\vspace{0.2em}{\small #1\par}}

% Two-line entries: organisation/location, then role/date.
\newcommand{\resumeSubheading}[4]{%
  \vspace{0.25em}%
  \noindent\textbf{#1}\hfill #2\par
  \noindent\emph{#3}\hfill #4\par
}

% One-line project heading: title/stack on the left, optional date on the right.
\newcommand{\resumeProjectHeading}[2]{%
  \vspace{0.25em}%
  \noindent#1\hfill #2\par
}

% Compact bullet lists.
\newcommand{\resumeItemListStart}{%
  \begin{itemize}[leftmargin=1.1em,labelsep=0.35em,itemsep=0pt,topsep=1pt,parsep=0pt,partopsep=0pt]%
}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-0.15em}}
\newcommand{\resumeItem}[1]{\item\small{#1}}

% Skills and languages.
\newcommand{\resumeLine}[2]{\noindent\textbf{#1:} #2\par}
