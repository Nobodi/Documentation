%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% translations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\ifgerman\germantrue

\DeclareOption{english}{
	\germanfalse
}

%% Set defaults for English language
\newcommand{\@supervisor}{}
\newcommand{\@reviewerA}{}
\newcommand{\@reviewerB}{}
\newcommand{\@fieldofdissertation}{}
\newcommand{\@degree}{}
\newcommand{\@location}{}
\newcommand{\@degreecourse}{}

\newcommand{\@stringTitle}{}
\newcommand{\@stringAuthor}{}
\newcommand{\@stringDegree}{}
\newcommand{\@stringDegreeCourse}{}
\newcommand{\@stringSupervisor}{}
\newcommand{\@stringReviewer}{}
\newcommand{\@stringHandoverdate}{}


%% German
\ifgerman
	\renewcommand{\@supervisor}{<Betreuername per \textbackslash supervisor setzen>}
	\renewcommand{\@reviewerA}{<Gutachtername 1 per \textbackslash reviewerA setzen>}
	\renewcommand{\@reviewerB}{<Gutachtername 2 per \textbackslash reviewerB setzen>}
	\renewcommand{\@fieldofdissertation}{<Dissertationsgebiet per \textbackslash fieldofdissertation setzen>}
	\renewcommand{\@degree}{<Angestrebten Grad per \textbackslash degree setzen>}
	\renewcommand{\@location}{<Ort der Arbeit per \textbackslash location setzen>}
	\renewcommand{\@degreecourse}{<Studiengang per \textbackslash degreecourse setzen>}

	\renewcommand{\@stringTitle}{Titel}
	\renewcommand{\@stringAuthor}{Verfasser}
	\renewcommand{\@stringDegree}{Angestrebter akademischer Grad}
	\renewcommand{\@stringDegreeCourse}{Studiengang}
	\renewcommand{\@stringSupervisor}{Betreuer}
	\renewcommand{\@stringReviewer}{Gutachter}
	\renewcommand{\@stringHandoverdate}{Abgabe}
\else
	\renewcommand{\@supervisor}{<Set supervisor name with \textbackslash supervisor>}
	\renewcommand{\@reviewerA}{<Set name of 1st supervisor with \textbackslash reviewerA>}
	\renewcommand{\@reviewerB}{<Set name of 2nd supervisor with \textbackslash reviewerB>}
	\renewcommand{\@fieldofdissertation}{<Set field of dissertation with \textbackslash fieldofdissertation>}
	\renewcommand{\@degree}{<Set intended degree with \textbackslash degree>}
	\renewcommand{\@location}{<Set location of thesis with \textbackslash location>}
	\renewcommand{\@degreecourse}{<Set course with \textbackslash degreecourse>}

	\renewcommand{\@stringTitle}{Title}
	\renewcommand{\@stringAuthor}{Author}
	\renewcommand{\@stringDegree}{Seeked Major}
	\renewcommand{\@stringDegreeCourse}{Major}
	\renewcommand{\@stringSupervisor}{Supervisor}
	\renewcommand{\@stringReviewer}{Reviewer}
	\renewcommand{\@stringHandoverdate}{Handover date}
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\supervisor}[1]{\renewcommand\@supervisor{#1}}

\newcommand{\reviewerA}[1]{\renewcommand\@reviewerA{#1}}

\newcommand{\reviewerB}[1]{\renewcommand\@reviewerB{#1}}

\newcommand{\fieldofdissertation}[1]{\renewcommand\@fieldofdissertation{#1}}

\newcommand{\degree}[1]{\renewcommand\@degree{#1}}

\newcommand{\location}[1]{\renewcommand\@location{#1}}

\newcommand{\dateofthesis}[1]{\renewcommand\@dateofthesis{#1}}

\newcommand{\degreecourse}[1]{\renewcommand\@degreecourse{#1}}

\newcommand{\@handoverdate}{\today}
\newcommand{\handoverdate}[1]{\renewcommand\@handoverdate{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% internal commands defaults declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\@titlelogos}{
	\includegraphics[height=2cm]{graphics/uni-due-logo-cmyk.eps}
	\hfill
	\includegraphics[height=2cm]{graphics/mas-logo-cmyk.eps}
}

\newcommand{\@supervisorreviewer}{
	\begin{tabular}{lp{8cm}}%\hline
		\small \@location, \@dateofthesis & ~\newline\newline\newline~ \\ %\hline
		\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
		\small \@stringSupervisor: & \small \@supervisor \\ %\hline
		%\small \@stringReviewer: &  \small \@reviewerA \\
		%\small & \small \@reviewerB \\
	\end{tabular}
}

\newcommand{\@arbeitstyp}{<Art der Arbeit (Option f\"ur \textbackslash documentclass setzen)>}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% option declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption{grey}{
	\renewcommand{\@titlelogos}{
		\includegraphics[height=2cm]{graphics/uni-due-logo-grey.eps}
		\hfill
		\includegraphics[height=2cm]{graphics/mas-logo-grey.eps}
	}
}
\DeclareOption{bachelorprojekt}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			%\small \@stringReviewer: &  \small \@reviewerA \\
			%\small & \small \@reviewerB \\
		\end{tabular}
	}
	
	\ifgerman	
		\renewcommand{\@arbeitstyp}{Bachelorprojekt}
	\else
		\renewcommand{\@arbeitstyp}{Bachelor Project}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{bachelorarbeit}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			\small \@stringReviewer: &  \small \@reviewerA \\
			\small & \small \@reviewerB \\
		\end{tabular}
	}
	
	\ifgerman	
		\renewcommand{\@arbeitstyp}{Bachelorarbeit}
	\else
		\renewcommand{\@arbeitstyp}{Bachelor Thesis}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{masterprojekt}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			% \small \@stringReviewer: &  \small \@reviewerA \\
			% \small & \small \@reviewerB \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Masterprojekt}
	\else
		\renewcommand{\@arbeitstyp}{Master Project}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{masterarbeit}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			\small \@stringReviewer: &  \small \@reviewerA \\
			\small & \small \@reviewerB \\
		\end{tabular}
	}

	\ifgerman
		\renewcommand{\@arbeitstyp}{Masterarbeit}
	\else
		\renewcommand{\@arbeitstyp}{Master Thesis}
	\fi
}
\DeclareOption{dissertation}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			\small \@stringReviewer: &  \small \@reviewerA \\
			\small & \small \@reviewerB \\
		\end{tabular}
	}

	\renewcommand{\@arbeitstyp}{Dissertation}
}
\DeclareOption{seminararbeit}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			% \small \@stringReviewer: &  \small \@reviewerA \\
			% \small & \small \@reviewerB \\
		\end{tabular}
	}

	\renewcommand{\@arbeitstyp}{Seminararbeit}
	\renewcommand{\thesection}{\arabic{section}}
}
\DeclareOption{fallstudie}{
	\renewcommand{\@supervisorreviewer}{
		\begin{tabular}{lp{8cm}}%\hline
			\small \@stringDegreeCourse: & \small \@degreecourse \\ %\hline
			\small \@stringSupervisor: & \small \@supervisor \\ %\hline
			% \small \@stringReviewer: &  \small \@reviewerA \\
			% \small & \small \@reviewerB \\
		\end{tabular}
	}
	
	\ifgerman	
		\renewcommand{\@arbeitstyp}{Fallstudie}
	\else
		\renewcommand{\@arbeitstyp}{Case Study}
	\fi
	\renewcommand{\thesection}{\arabic{section}}
}
\ProcessOptions\relax


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\RequirePackage{hyperxmp}

%% detect and set proper values for lualatex
\RequirePackage{ifluatex}
\ifluatex
	\RequirePackage{fontspec}
	\RequirePackage{microtype}
	%\RequirePackage{amsmath}
	\RequirePackage{amssymb}
	\RequirePackage{mathtools}
	\RequirePackage{unicode-math} % fixes math
	\RequirePackage{lualatex-math} % fixes amsmath/mathtools ... for luatex
	\setmainfont[SmallCapsFont={Linux Libertine O},SmallCapsFeatures={Letters=SmallCaps},Ligatures=TeX]{Linux Libertine O}
	\newfontfamily\scfont[Letters=SmallCaps, Ligatures=TeX]{Linux Libertine O}
	%\RequirePackage{tex-gyre-math}
	%\setmathfont{texgyrepagellamath-regular.otf} % math font for libertine
	%\setmathfont{texgyrepagella-math.otf} % math font for libertine
	\setmathfont[math-style=ISO,bold-style=ISO,vargreek-shape=TeX,Ligatures=TeX]{TeX Gyre Pagella Math}
	\ifgerman
	%	\setdefaultlanguage{german}  % polyglossia bugged with "german" on 2016-03-08
	%	\selectlanguage{german}	  % Using babel instead
	%	\setotherlanguage[variant=american]{english}
		\RequirePackage[latin1]{fontenc}
		\RequirePackage[ngerman]{babel}
	\else
		\RequirePackage{polyglossia} % babel replacement for use with fontspec
		\setdefaultlanguage[variant=american]{english}
		\selectlanguage[variant=american]{english}
		\setotherlanguage{german}
	\fi
\else
	\RequirePackage[latin1]{inputenc}
	\RequirePackage[T1]{fontenc}
	\ifgerman
		\RequirePackage[ngerman]{babel}
	\else
		\RequirePackage[american]{babel}
	\fi
	\RequirePackage{amsmath}
	\RequirePackage{mathtools} % instead of amsmath; amssymb and amsthm not included
	\RequirePackage{libertine}
	\RequirePackage[libertine]{newtxmath} % math font for libertine
	\RequirePackage{microtype}
	\microtypesetup{expansion=false}%
\fi

\RequirePackage[hyphens]{url}
\RequirePackage{scrhack} % fix komascript floattolist issues
\RequirePackage[defernumbers=true, style=alphabetic, citestyle=alphabetic, firstinits=true, backend=biber, doi=true, url=true, block=ragged, maxnames=6]{biblatex} % 
\RequirePackage{csquotes} % context sensitive quotations; especially for use with biblatex and biber
\RequirePackage{listings} % ?
\RequirePackage[scale=3]{ccicons} % creative commons icons
\RequirePackage{import} % for subimport and relative directory \includegraphics
\RequirePackage{caption} % figure caption control
\RequirePackage{subcaption} % sub figure replacement
\RequirePackage{multirow} % tables spanning multiple rows
\RequirePackage{longtable} %required for tabu with longtabu
\RequirePackage{tabu} %supersedes tabularx, provides tables spanning multiple pages
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage{enumitem} % inline lists, etc.

\RequirePackage[colorlinks, unicode=true]{hyperref}
\hypersetup{pdfencoding=auto, colorlinks=true, linktocpage=true, breaklinks=true, bookmarksnumbered, bookmarksopen=true,bookmarksopenlevel=1, pdfhighlight=/O, urlcolor=webbrown, linkcolor=linkblue, citecolor=webgreen}
\RequirePackage{textcomp} % extra symbols; used for euro and copyright symbol
\RequirePackage[load-configurations={abbreviations,binary}]{siunitx}
\sisetup{load-configurations = abbreviations,binary-units}
\RequirePackage{xspace} % ?
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{numprint} % fancy numbers
\npstyleenglish % numprint style, fraction and 1.000 separation
\RequirePackage[24hr,iso]{datetime}
%\RequirePackage{gitinfo}
%\RequirePackage[multiple,stable]{footmisc} % incompatible with hyperref
\RequirePackage[automark]{scrpage2}
\RequirePackage{booktabs} % \toprule and other table stuff
\RequirePackage[titles]{tocloft} % toc style
%\RequirePackage[disable]{easy-todo} % load after tocloft to avoid option clash, option [disable] to disable!
\RequirePackage[a4paper]{geometry} % page margins
\RequirePackage{titlesec}
\RequirePackage{textcase} % for \MakeTextUppercase


\RequirePackage{metalogo}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% colors
\definecolor{Maroon}{cmyk}{0, 0.87, 0.68, 0.32}
\definecolor{RoyalBlue}{cmyk}{1, 0.50, 0, 0}
\definecolor{Black}{cmyk}{0, 0, 0, 0}
\definecolor{grey}{RGB}{153, 153, 153}
\definecolor{orange}{RGB}{230, 159, 0}
\definecolor{skyblue}{RGB}{86, 180, 233}
\definecolor{bluishgreen}{RGB}{0, 158, 115}
\definecolor{yellow}{RGB}{240, 228, 66}
\definecolor{blue}{RGB}{0, 114, 178}
\definecolor{vermillion}{RGB}{213, 94, 0}
\definecolor{reddishpurple}{RGB}{204, 121, 167}
\definecolor{halfgray}{gray}{0.55} % chapter numbers will be semi transparent .5 .55 .6 .0
\definecolor{webgreen}{rgb}{0,.5,0}
\definecolor{webbrown}{rgb}{.6,0,0}
\definecolor{linkblue}{RGB}{22,50,80}

\captionsetup{format=hang,font=small}
\setlength{\extrarowheight}{3pt} % increase table row height
\newcommand{\tableheadline}[1]{\spacedlowsmallcaps{#1}}
\setlength{\belowcaptionskip}{-10pt} % Less space below captions


%%% text
\linespread{1.25}
\setlist[description]{labelindent=\parindent}
\hfuzz=1.36pt


%%% page layout
\setlength{\headheight}{1.2\baselineskip} % fixes small headheight warning from screport with lualatex
\pagestyle{scrheadings}
\ohead{\headmark}
\ofoot{\pagemark}


%%% toc
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{3}
%\setlength{\cftbeforechapskip}{0.3em}
%\setlength{\cftbeforesecskip}{0.1em}


%\makeatletter

%\makeatother

%% set pdf parameters (title, ...)
%\makeatletter
\AtBeginDocument{
  \hypersetup{
    pdftitle = {\@title},
    pdfauthor = {\@author}
  }
}
%\makeatother


%% settings imported and adapted from classicthesis
\DeclareRobustCommand{\spacedallcaps}[1]{\textls[160]{\MakeTextUppercase{#1}}}%
%\usepackage[maxfloats=48]{morefloats} % enable this if too many unprocessed floats are happening
\clubpenalty = 10000 % Disable single lines at the start of a paragraph (Schusterjungen)
\widowpenalty = 10000 % Disable single lines at the end of a paragraph (Hurenkinder)
\displaywidowpenalty = 10000 % formulas

% Graffiti as in GKP's book "Concrete Mathematics"
% thanks to Lorenzo Pantieri and Enrico Gregorio
\def\graffito@setup{%
   \slshape\footnotesize%
   \parindent=0pt \lineskip=0pt \lineskiplimit=0pt %
   \tolerance=2000 \hyphenpenalty=300 \exhyphenpenalty=300%
   \doublehyphendemerits=100000%
   \finalhyphendemerits=\doublehyphendemerits}
%\DeclareRobustCommand{\graffito}[1]{\marginpar%
% [\graffito@setup\raggedleft\hspace{0pt}{#1}]%
% {\graffito@setup\raggedright\hspace{0pt}{#1}}}
\let\oldmarginpar\marginpar
\renewcommand{\marginpar}[1]{\oldmarginpar%
 [\graffito@setup\raggedleft\hspace{0pt}{#1}]%
 {\graffito@setup\raggedright\hspace{0pt}{#1}}}
              
  %    \DeclareRobustCommand{\fixBothHeadlines}[2]{} % <--- ToDo
    % hack to get the content headlines right (thanks, Lorenzo!)


%% titlesec settings
% section heading styles     
%\AtBeginDocument{\addtocontents{toc}{\protect\vspace{-\cftbeforechapskip}}}

% sections
\titleformat{\section}{\relax}{\textsc{\thesection}}{1em}{\Large\scshape}

% subsections
\titleformat{\subsection}{\relax}{\textsc{\MakeTextLowercase{\thesubsection}}}{1em}{\large}

% subsubsections
\titleformat{\subsubsection}{\relax}{\textsc{\MakeTextLowercase{\thesubsubsection}}}{1em}{\normalsize}

% paragraphs
\titleformat{\paragraph}[hang]{\normalfont\normalsize}{\theparagraph}{0pt}{\scshape}

% descriptionlabels
\renewcommand{\descriptionlabel}[1]{\hspace*{\labelsep}\textsc{#1}}   % spacedlowsmallcaps textit textsc                  
% spacing
\titlespacing*{\section}{0pt}{1\baselineskip}{1.2\baselineskip}
\titlespacing*{\section}{0pt}{1.25\baselineskip}{1\baselineskip} 
\titlespacing*{\subsection}{0pt}{1.25\baselineskip}{1\baselineskip}
\titlespacing*{\paragraph}{0pt}{1\baselineskip}{1\baselineskip}


%% toc style with tocloft package
%\renewcommand{\cftchappresnum}{\scshape\MakeTextLowercase}%
%\renewcommand{\cftchapfont}{\normalfont}%
%\renewcommand{\cftchappagefont}{\normalfont}%
%\let\oldchap=\section
%\renewcommand*{\section}{\secdef{\Chap}{\ChapS}}
%\newcommand\ChapS[1]{\oldchap*{#1}}%
% \newcommand\Chap[2][]{%
%        \ifpdf\oldchap[\texorpdfstring{\spacedlowsmallcaps{#1}}{#1}]{#2}%
%        \else\oldchap[\spacedlowsmallcaps{#1}]{#2}%
%        \fi%
% }%
%\newcommand\Chap[2][]{\oldchap[\textsc{#1}]{#2}}%
%\textsc{foo} {\scshape bar}

\deffootnote{0em}{0em}{\thefootnotemark\hspace*{.5em}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% title page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\renewcommand*{\maketitle}{%
	\begin{titlepage}

	\@titlelogos

	\begin{center}

	\vskip 1.5cm

	{\Huge\bfseries\uppercase{\@arbeitstyp}}\\[1.5cm]

	{\@stringTitle\\[2mm]
	\huge\bfseries\textsc{\centering,,\@title''}}\\[2cm]


	{\@stringAuthor\\
	\bfseries \@author}\\[2cm]

	{\@stringHandoverdate\\
	\bfseries \@handoverdate}\\[2cm]

	\scalebox{1.1} {
		\@supervisorreviewer
	}
	\end{center}
	\end{titlepage}
}

\newcommand{\makelicensepageCCBYSA}{%
	\newpage
	\thispagestyle{empty}
	%\null
	% \begin{center}
	% {\color{red}
	% Version Information: \\
	% commit \gitAbbrevHash \\
	% from \gitAuthorIsoDate 
	% }
	% \end{center}
	~\vfill
	%\begin{center}
	\noindent\textcopyright~\the\year~by \@author

	\vspace{5mm}

	\noindent This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.\\
	\url{https://creativecommons.org/licenses/by-sa/4.0/}

	\vspace{5mm}

	\noindent\ccbysa

	%\end{center}
	\vspace{5mm}
	\noindent Typeset in \f@family{} \f@size{} 11pt Libertine using \ifluatex\LuaLaTeX\else\LaTeX\fi.
}
