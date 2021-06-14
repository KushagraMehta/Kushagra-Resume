% Intro Options
\ProvidesClass{Kushagra-build}[2021/05/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.5cm, vmargin=0.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome}
\pagenumbering{gobble}
\usepackage{datetime2}

% Color definitions
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{0E0E0F}
\definecolor{subheadings}{HTML}{1A1C1E}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/Inconsolata/, Scale=0.9]{Inconsolata-Regular}
\newcommand{\custombold}[1]
{\color{subheadings}\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Medium}\selectfont #1 \normalfont}
\linespread{1}

% Date format
\DTMnewdatestyle{mylastupdate}{%
  \renewcommand*{\DTMdisplaydate}[4]{\DTMtwodigits{##2}/\DTMtwodigits{##3}/##1}\color{date}\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Light}\fontsize{10pt}{10pt}\selectfont%
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

% Name command
\newcommand{\namesection}[1]{
	\hspace{-1.7em}\raggedright{\parbox[t]{40em}{\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Black}\fontsize{40pt}{0cm}\selectfont #1}}
    \hfill
    \vspace{1em}
}
\titlespacing{\section}{0pt}{0pt}{5pt}
% Link command
\newcommand{\linksection}[1]{
    \raggedleft{\parbox[t]{20em}{\color{headings}\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Regular}\fontsize{12pt}{14pt}\selectfont #1}}
   	\vspace{2.2em} 
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Light}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Jobtitle command
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/Inconsolata/]{Inconsolata-ExtraBold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/Inconsolata/]{Inconsolata-SemiBold}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/Inconsolata/]{Inconsolata-Medium}\fontsize{9pt}{11pt}\selectfont {#1 \\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Positions command
\newcommand{\position}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/Inconsolata/]{Inconsolata-SemiBold}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/Inconsolata/]{Inconsolata-SemiBold}\fontsize{11pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Location command
\newcommand{\location}[1]{\color{primary}\raggedright\fontspec[Path = fonts/Inconsolata/]{Inconsolata-SemiBold}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
% Ordered Bullet Lists with fewer gaps command
\newenvironment{tightenumerate}{\vspace{-\topsep}\begin{enumerate}\itemsep1pt \parskip0pt \parsep0pt}{\end{enumerate}\vspace{-\topsep}}



