\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myresume}[2021-10-23 Resume template for Zack Crosley]
% Base this off the article class
\LoadClass{article}
% Set font family.
% \usepackage[default]{sourcecodepro}
\RequirePackage[default]{opensans}
\RequirePackage[T1]{fontenc}
% set page margins.
\RequirePackage[margin=0.75in]{geometry}
% titlesec to format sections, titles.
\RequirePackage[explicit]{titlesec}
% Add tcolorbox for colorful sections, titles
\RequirePackage{xcolor}

% Declare counter for use in template
\newcounter{mycount}

% define color for resume
\definecolor{accent}{RGB}{209, 99, 73}
\definecolor{secondary}{RGB}{45, 45, 45}
\color{secondary}

% Set spacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setlength{\baselineskip}{0pt}
\setlength{\abovedisplayskip}{0pt}
\setlength{\belowdisplayskip}{0pt}
\setlength{\abovedisplayshortskip}{0pt}
\setlength{\belowdisplayshortskip}{0pt}
\lineskiplimit=-\maxdimen

% Format section header
\newcommand{\sectionfont}{\fontsize{12pt}{12pt}\color{white}\bfseries}
\setlength{\fboxsep}{0.2em}
\setlength{\fboxrule}{0pt}
\titlespacing{\section}{0pt}{0pt}{0.25em}
\titleformat{\section}
  [display]
  {\sectionfont}%\begin{spacing}{0.5}}
  {}%\end{spacing}}
  {0pt}
  {\colorbox{accent}{\fbox{\parbox{\textwidth}{\MakeUppercase{#1}}}}}

% Format subsection header
\newcommand{\subsectionfont}{\fontsize{12pt}{12pt}\color{accent}}
\titlespacing{\subsection}{0pt}{0.5em}{0.5em}
\titleformat{\subsection}
  [display]
  {\subsectionfont}%\begin{spacing}{0.75}}
  {}%\end{spacing}}
  {0pt}
  {\MakeUppercase{#1}}
  
% Format subsubsection header
\newcommand{\paragraphfont}{\fontsize{11pt}{11pt}\color{secondary}}
\titlespacing{\paragraph}{0pt}{0.3em}{0.5em}
%   looper to print out items.
\newcommand{\printheader}[1]{\setcounter{mycount}{0}
                             \@for\tmp:=#1\do{
                                \ifnum \value{mycount}>0 {\hspace{0.1in}·\hspace{0.1in}} \fi
                                \stepcounter{mycount}
                                \tmp}}
\titleformat{\paragraph}
  [display]
  {\paragraphfont}%\begin{spacing}{0.75}}
  {}%\end{spacing}}
  {0pt}
  {\printheader{#1}}
  
% Format Title
\newcommand{\titlefont}{\fontsize{26pt}{26pt}\color{accent}\normalfont\MakeUppercase}
\newcommand{\resumename}[1]{\begin{flushleft}
                              \titlefont{#1}
                            \end{flushleft}}
                            
% Format Subtitle
\newcommand{\subtitlefont}{\fontsize{11pt}{11pt}\color{secondary}\normalfont}
%     looper to print out subtitle.
\newcommand{\printsubtitle}[1]{\setcounter{mycount}{0}
                               \@for\stmp:=#1\do{
                                  \ifnum \value{mycount}>0 {\hspace{0.2in}|\hspace{0.2in}} \fi
                                  \stepcounter{mycount}
                                  \MakeUppercase{\stmp}}}
\newcommand{\resumecontact}[1]{\subtitlefont{\printsubtitle{#1}}}