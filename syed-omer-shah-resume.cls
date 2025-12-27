% Syed Omer Shah Resume Template (Two-Column, XeLaTeX)
% --------------------------------------------------------------------
% Derivative work based on:
%  - Deedy-Resume by Debarghya Das
%  - Deedy-Resume-Reversed by Zachary Taylor
% Licensed under Apache License 2.0. See LICENSE and NOTICE.
% --------------------------------------------------------------------
% Prominent changes by Syed Omer Shah:
%  - New class name and branding
%  - Font loading made Overleaf-friendly (no required local fonts folder)
%  - Minor defaults tuned for this structure
%
\ProvidesClass{syed-omer-shah-resume}[2025/12/25 Two-column resume class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Geometry & links
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm} % hide "References" header; we use a \section{Publications}

% Colors
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Fonts (XeLaTeX via fontspec)
\usepackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}

% Pick fonts that are usually available on Overleaf (TeX Live).
% If Lato/Raleway exist on the system, we'll prefer them; otherwise fallback.
\newcommand{\cvMainFont}{TeX Gyre Heros}
\newcommand{\cvSansFont}{TeX Gyre Heros}

\IfFontExistsTF{Lato}{\renewcommand{\cvMainFont}{Lato}}{}
\IfFontExistsTF{Raleway}{\renewcommand{\cvSansFont}{Raleway}}{}

\setmainfont[Color=primary]{\cvMainFont}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{\cvSansFont}

% Date command (optional)
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{%
  \begin{textblock}{60}(155,5)
    \color{date}\sffamily\fontsize{8pt}{10pt}\selectfont
    Last Updated on \today
  \end{textblock}
}

% Name block
\newcommand{\namesection}[2]{%
  \centering{%
    \fontsize{40pt}{60pt}\selectfont #1
  }\\[5pt]
  \centering{%
    \color{headings}\sffamily\fontsize{11pt}{14pt}\selectfont #2
  }%
  \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}%
  \vspace{-15pt}%
}

% Section separators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings
\titleformat{\section}{\color{headings}\scshape\fontsize{16pt}{24pt}\selectfont\raggedright\uppercase}{}{0em}{}
\titleformat{\subsection}{\color{subheadings}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

% Convenience macros
\newcommand{\runsubsection}[1]{%
  \color{subheadings}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1}\normalfont
}

\newcommand{\descript}[1]{%
  \color{subheadings}\raggedright\scshape\fontsize{11pt}{13pt}\selectfont {#1 \\}\normalfont
}

\newcommand{\location}[1]{%
  \color{subheadings}\raggedright\sffamily\fontsize{10pt}{12pt}\selectfont {#1\\}\normalfont
}

\newenvironment{tightemize}{%
  \vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt
}{%
  \end{itemize}\vspace{-\topsep}
}
