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
    tmargin  =1.1in,
    bmargin  =1.1in,
    lmargin  =1.1in,
    rmargin  =0.6in,
}

% General font and typography
\RequirePackage{microtype}
\RequirePackage{float}
\RequirePackage{xcolor}

\RequirePackage{remreset}

\makeatletter
  \@removefromreset{section}{chapter}
\makeatother

\RequirePackage{tikz}
\RequirePackage[font=footnotesize]{caption}

\doublehyphendemerits=1000000000
\widowpenalty=10000
\clubpenalty=10000
\brokenpenalty=10000
% Mathematics packages
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{amssymb}
\RequirePackage{mathabx}

\usepackage[math-style=ISO]{unicode-math}
\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Old Standard}[Scale=MatchLowercase,Ligatures=TeX]
\setsansfont{Old Standard}[Scale=MatchLowercase,Ligatures=TeX]
\setmathfont{Latin Modern Math}[Scale=MatchLowercase,Ligatures=TeX]

% Use GFS BaskervilleClassic for Greek
%\setmathfont[range=up/{greek,Greek}]{Old Standard}
\setmathfont[range=it/{greek,Greek}]{Old Standard Italic}
\setmathfont[range=it/{Latin, latin}]{Old Standard Italic}
\setmathfont[range=it/{num}, Scale=0.85]{Old Standard Italic}
\setmathfont[range=up/{num}, Scale=0.85]{Old Standard}
\setmathfont[range="222B, Scale=1.75]{Old Standard}

\setmathfont[range={\varnothing}]{Old Standard}
\setmathfont[range=cal]{XITS Math}
%\setmathfont[range=frak]{UnifrakturMaguntia}
%\setmathfont[range={\mitvarphi,\mittau, \mitpi}]{TeX Gyre Schola Math}

\RequirePackage{perpage}
\MakePerPage{footnote}
\RequirePackage[symbol]{footmisc}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}



% Table, figures and related typesetting
\RequirePackage{graphics}
\RequirePackage{graphicx}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}



% Math macros
\newcommand{\Reals}{\frak{R}}
\newcommand{\Naturals}{\mathbb{N}}
\newcommand{\Integers}{\mathbb{Z}}
\newcommand{\Complex}{\frak{C}}
\newcommand{\Rationals}{\frak{Q}}
\newcommand{\Polynom}{\frak{P}}
\newcommand{\Field}{\frak{F}}
\newcommand{\VecSp}{\frak{V}}
\newcommand{\nullspace}{\frak{K}}
\newcommand{\range}{\frak{I}}
\newcommand{\transp}[1]{{#1}^{\mathrm{T}}}
\newcommand{\abs}[1]{\left\lvert#1\right\rvert}
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\innerprod}[2]{\left\langle#1,#2\right\rangle}
\newcommand{\Span}[1]{\mathrm{Span}(#1)}




% Theorems
\newtheorem{theorem}{Theorem}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{lemma}[theorem]{Lemma}




\newtheoremstyle{examplex} % name
    {2ex plus 1ex minus .2ex}                    % Space above
    {\topsep}                    % Space below
    {\small}                   % Body font
    {}                           % Indent amount
    {\scshape}                   % Theorem head font
    {.}                          % Punctuation after theorem head
    {.5em}                       % Space after theorem head
    {}  % Theorem head spec (can be left empty, meaning ‘normal’)

\newtheoremstyle{defx} % name
    {2ex plus 1ex minus .2ex}                    % Space above
    {\topsep}                    % Space below
    {}                   % Body font
    {}                           % Indent amount
    {\scshape}                   % Theorem head font
    {.}                          % Punctuation after theorem head
    {.5em}                       % Space after theorem head
    {}  % Theorem head spec (can be left empty, meaning ‘normal’)

\theoremstyle{examplex}
\newtheorem{example}{Example}
\newtheorem*{remark}{Remark}

\theoremstyle{defx}
\newtheorem*{definition}{Definition}

\renewcommand{\thesection}{\arabic{section}}

\RequirePackage{titletoc}
\titlecontents{section}[1.5em]{\normalfont}{}{1em}{\titlerule*[0.75pc]{.}\contentspage}

\RequirePackage{chngcntr}
\counterwithin*{example}{chapter}
\counterwithin*{theorem}{chapter}
\counterwithin*{equation}{chapter}


\newfontfamily{\bask}{GFS Solomos}
\DeclareMathOperator*{\sumx}{\raisebox{-3pt}{\scalebox{1.5}{\rotatebox{1}{{\bask\textrm{\mupSigma}}}}}} % all these lines to define this extreme summation sign



\RequirePackage{titlesec}


%% Formatting of chapters
\titleformat{\chapter}[display]
{\bfseries\large\centering}{\centering---\:\thechapter\:---}{1em}{\bfseries\LARGE\MakeUppercase}
\titlespacing*{\chapter}
{0pt}{3ex plus 1ex minus .2ex}{40pt}


%% Formatting of sections
\titleformat{\section}
{\bfseries\normalsize}{\S\,\thesection.}{1em}{\bfseries\normalsize\filcenter}
\titlespacing*{\section}
{0pt}{3ex plus 1ex minus .2ex}{8pt}

%% Formatting of subsections
\titleformat{\subsection}[block]
{\small}{\thesubsection}{1em}{\itshape\small\filcenter}
\titlespacing*{\subsection}
{0pt}{3ex plus 1ex minus .2ex}{4pt}



%% Formatting of subsubsections
\titleformat{\subsubsection}
{\small}{\thesubsubsection}{1em}{\small}


\AtBeginDocument{%
\let\phi\varphi
\let\epsilon\varepsilon
\let\leq\leqslant
\let\geq\geqslant
\let\emptyset\varnothing

}

\endinput