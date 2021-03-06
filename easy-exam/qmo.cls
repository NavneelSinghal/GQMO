\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qmo}
\LoadClass[11pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=7em,includefoot]{geometry}
\RequirePackage{mdframed}
\RequirePackage{amsthm}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}

\definecolor{bc}{RGB}{153,153,153}
\pagenumbering{gobble}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\nl}{\medskip\\ }

\newtheoremstyle{qmoprob}
	{0pt}
	{0pt}
	{}
	{}
	{\bfseries\sffamily}
	{\medskip\\}
	{0pt}
	{}
\theoremstyle{qmoprob}
\newmdtheoremenv[
	topline=false,
	rightline=false,
	bottomline=false,
	skipabove=1.5\baselineskip,
	skipbelow=1.5\baselineskip,
	linewidth=5pt,
	linecolor=bc
]{problem}{Problem}

\makeatletter
\let\@qmoday\@empty
\newcommand{\level}[1]{\gdef\@level{#1}}
\newcommand{\qmoday}[1]{\gdef\@qmoday{#1}}
\newcommand{\qmotime}[1]{\gdef\@qmotime{#1}}
\lfoot{\itshape\@date}
\rfoot{\itshape\@qmotime}
\renewcommand{\maketitle}
	{\noindent
	\def\svgwidth{145pt}
	\input{_LOGO.pdf_tex}
	\begin{flushright}
		\Large\scshape\framebox{\@level}\ifx\@day\@empty\else\smallskip\\
		\fi
	\end{flushright}
	\ifx\@day\@empty\else\vspace*{-0.2\baselineskip}\fi
	\rule{\textwidth}{.7pt}
	\vspace*{0.5\baselineskip}
	}
\makeatother
