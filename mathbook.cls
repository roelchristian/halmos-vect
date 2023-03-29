\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathbook}[2023/02/12 v1.0.0 Personal Math Book Latex Class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax

% Load the scrbook class as the base class
\LoadClass[11pt, leqno]{scrbook}
\areaset[0.50in]{4.5in}{8in}

% Page layout
\RequirePackage[paperwidth=6in,paperheight=9in]{geometry}
\geometry {
    verbose,
    tmargin  =1in,
    bmargin  =1in,
    lmargin  =1in,
    rmargin  =0.6in,
}

% General font and typography
\RequirePackage{microtype}
\RequirePackage{float}
\RequirePackage{xcolor}

\usepackage{pdfrender}
\pdfrender{TextRenderingMode=2,LineWidth=.3pt}

\RequirePackage{remreset}

\makeatletter
  \@removefromreset{section}{chapter}
\makeatother

\RequirePackage{tikz}
\RequirePackage[font=footnotesize]{caption}

\doublehyphendemerits=1000000000
\widowpenalties=3 10000 10000 150
\clubpenalty=10000
\brokenpenalty=10000

% Mathematics packages
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{amssymb}
\RequirePackage{mathabx}
\RequirePackage{tikz-cd}

\usepackage[math-style=ISO]{unicode-math}
\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Old Standard}[Scale=MatchLowercase,Ligatures=TeX]
\setsansfont{Old Standard}[Scale=MatchLowercase,Ligatures=TeX]
\setmathfont[Scale=MatchLowercase,Ligatures=TeX, math-style=TeX]{Latin Modern Math}

% Use GFS BaskervilleClassic for Greek
%\setmathfont[range={greek,Greek},]{Old Standard}
\setmathfont[range=it/{Latin,latin,greek}]{Old Standard Italic}
\setmathfont[range=up/{Greek}]{Old Standard}


\setmathfont[range=it/{"221E}]{Old Standard Italic}
\setmathfont[range="222B, Scale=1.75]{Old Standard}



\setmathfont[range={\varnothing}]{Old Standard}
\setmathfont[range=cal]{XITS Math}

%\setmathfont[range={\mitvarphi,\mittau, \mitpi}]{TeX Gyre Schola Math}

\RequirePackage{upgreek}
\makeatletter
\DeclareMathSizes{\@xipt}{\@xipt}{6.5}{5}
\makeatother

\RequirePackage{perpage}
\MakePerPage{footnote}
\RequirePackage[symbol]{footmisc}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}


% Table, figures and related typesetting
\RequirePackage{graphics}
\RequirePackage{graphicx}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{hyperref}
%\RequirePackage[hidelinks]{hyperref}
\RequirePackage{cleveref}
\crefformat{section}{\S\,#2#1#3}

% Math macros
\newcommand{\Reals}{\mathfrak{R}}
\newcommand{\Naturals}{\mathfrak{N}}
\newcommand{\Integers}{\mathfrak{Z}}
\newcommand{\Complex}{\mathfrak{C}}
\newcommand{\Rationals}{\mathfrak{Q}}
\newcommand{\Polynom}{\mathfrak{P}}
\newcommand{\Field}{\mathfrak{F}}
\newcommand{\VecSp}{\mathfrak{V}}
\newcommand{\Mfold}{\mathfrak{M}}
\newcommand{\Basisx}{\mathfrak{X}}
\newcommand{\Dual}{\mathfrak{V}'}
\newcommand{\nullspace}[1]{\frak{N}(#1)}
\newcommand{\range}[1]{\frak{R}(#1)}
\newcommand{\ZeroSpace}{\frak{O}}
\newcommand{\transp}[1]{{#1}^{\mathrm{T}}}
\newcommand{\abs}[1]{\left\lvert#1\right\rvert}
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\innerprod}[2]{\left(#1,\,#2\right)}
\newcommand{\Span}[1]{\mathrm{Span}(#1)}
\newcommand{\trace}[1]{\mathrm{tr}\,#1}
\newcommand{\dpair}[2]{\left\langle#1,\,#2\right\rangle}
\newcommand{\anh}[1]{{\mathfrak{#1}^0}}


% Theorems
\newtheorem{theorem}{Theorem}[section]
\renewcommand{\thetheorem}{\arabic{theorem}}% Remove subsection from theorem counter representation
\newtheorem{question}{Question}[section]
\renewcommand{\thequestion}{\Roman{question}}

\newtheorem*{thmx}{Theorem} % unnumbered theorem
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{lemma}[theorem]{Lemma}

\theoremstyle{definition}
\newtheorem*{definition}{Definition}


\newtheoremstyle{examplex} % name
    {2ex plus 1ex minus .2ex}                    % Space above
    {\topsep}                    % Space below
    {\small}                   % Body font
    {}                           % Indent amount
    {\scshape}                   % Theorem head font
    {.}                          % Punctuation after theorem head
    {.5em}                       % Space after theorem head
    {}  % Theorem head spec (can be left empty, meaning ‘normal’)

\theoremstyle{examplex}
\newtheorem{example}{Example}
\newtheorem*{remark}{Remark}

\AtBeginEnvironment{proof}{\renewcommand{\qedsymbol}{}}{}{}

\renewcommand{\thesection}{\arabic{section}}


\RequirePackage{titletoc}
\titlecontents{section}[1.5em]{\normalfont}{}{1em}{}

\setcounter{tocdepth}{0}

\RequirePackage{chngcntr}
\counterwithin*{example}{chapter}
\counterwithin*{theorem}{chapter}
\counterwithin*{equation}{section}

\renewcommand{\theequation}{\arabic{equation}}

\newfontfamily{\bask}{GFS Solomos}
\newfontfamily{\schola}{Old Standard}


\DeclareMathOperator{\sumx}{\raisebox{-2pt}{\scalebox{1.5}{\rotatebox{1}{{\bask$\mathrm{\mupSigma}$}}}}}
\DeclareMathOperator{\prodx}{\raisebox{-2pt}{\scalebox{1.5}{\rotatebox{1}{{\bask\textrm{\mupPi}}}}}} 

\DeclareMathOperator*{\capx}{{\scalebox{1.75}{\rotatebox{1}{{\schola\cap}}}}}  
\DeclareMathOperator{\ncapx}{{\scalebox{1.2}{\rotatebox{1}{{\cap}}}}}
\DeclareMathOperator{\ncap}{{\scalebox{1.2}{\rotatebox{1}{{\cap\,}}}}}

\DeclareMathOperator{\xsubset}{\raisebox{1pt}{\scalebox{1}{\rotatebox{1}{{\,\subset\,}}}}}
\DeclareMathOperator{\sign}{sgn}



\RequirePackage{titlesec}
\RequirePackage{pifont}



%% Formatting of chapters
\renewcommand{\thechapter}{\Roman{chapter}}
\titleformat{\chapter}[display]
{\large\centering}
{\centering\chaptertitlename\:\thechapter.}
{0.5em}{\bfseries\Large\MakeUppercase
}
\titlespacing*{\chapter}
{0pt}{3ex plus 1ex minus .2ex}{20pt}


%% Formatting of sections
\titleformat{\section}
{\bfseries\normalsize}{\S\,\thesection.}{0.33em}{\bfseries\normalsize\filcenter}
\titlespacing*{\section}
{0pt}{3ex plus 1ex minus .2ex}{8pt}

%% Formatting of subsections
\titleformat{\subsection}[block]
{\small}{\thesubsection}{1em}{\itshape\small\filcenter}
\titlespacing*{\subsection}
{0pt}{4ex plus 1ex minus .2ex}{7pt}

\RequirePackage[headsepline=true,
  %autooneside = false% not needed with the default twoside=true
]{scrlayer-scrpage}% sets page style scrheadings automatically
\AfterTOCHead{
  \thispagestyle{empty}%
  \pagestyle{empty}%
  \clearscrheadfoot%
}
\AfterStartingTOC{\clearpage}
\pagestyle{scrheadings}
\clearscrheadfoot
\automark[chapter]{chapter}
\automark*[section]{}
\renewcommand*{\headfont}{\normalfont}
\renewcommand{\sectionmark}[1]{\markleft{#1}}
\renewcommand{\chaptermark}[1]{\markright{#1}}


\cohead{\pdfrender{StrokeColor=black,TextRenderingMode=2,LineWidth=0.3pt}\S\,\thesection.\:\leftmark }  
\rohead{\pdfrender{StrokeColor=black,TextRenderingMode=2,LineWidth=0.3pt}\thepage}  
\cehead{\pdfrender{StrokeColor=black,TextRenderingMode=2,LineWidth=0.3pt}\rightmark}
\lehead{\pdfrender{StrokeColor=black,TextRenderingMode=2,LineWidth=0.3pt}\thepage}
\cofoot[]{}
\rofoot[]{}
\renewcommand*{\chaptermarkformat}{}
\setheadsepline{0pt}                              
\addtokomafont{pageheadfoot}{\small}        




\RequirePackage{luacode}

\newrobustcmd\dblpnct[1]{%
  \ifincsname
  \else
    \ifmmode\else
      \ifhmode\unskip\fi
      \nolinebreak#1%
    \fi
  \fi
}
\makeatletter
% latex.ltx, line 4070:
\def\label#1{\@bsphack
  \protected@write\@auxout{\let\dblpnct\@gobble}% <-- disable in \label
         {\string\newlabel{#1}{{\@currentlabel}{\thepage}}}%
  \@esphack}
\makeatother

\RequirePackage{chickenize}
\def\addtosubstitutions#1#2{
  \directlua{addtosubstitutions("\luaescapestring{#1}","\luaescapestring{#2}")}
}
\addtosubstitutions{\cdots}{\cdot\,\cdot\,\cdot}
\substitutewords

\begin{luacode}
function dosub(s)
    s = string.gsub(s, '!', '\\dblpnct{\\hspace{0.15em}}!')
    s = string.gsub(s, ':', '\\dblpnct{\\space}:')
    s = string.gsub(s, ';', '\\dblpnct{\\hspace{0.15em}};')
    s = string.gsub(s, '?', '\\dblpnct{\\hspace{0.15em}}?')
    
    return(s)
end
\end{luacode}


\AtBeginDocument{%
\let\phi\varphi
\let\epsilon\varepsilon
\let\leq\leqslant
\let\geq\geqslant
\let\emptyset\varnothing
\let\implies\Rightarrow
\luaexec{luatexbase.add_to_callback("process_input_buffer", dosub, "dosub")}

}

\endinput