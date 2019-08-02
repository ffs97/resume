%!TEX TS-program = xelatex
%!TEX encoding = UTF-8 Unicode
% Awesome CV LaTeX Template for CV/Resume
%
% This template has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Author:
% Claud D. Park <posquit0.bj@gmail.com>
% http://www.posquit0.com
%
% Template license:
% CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/)
%
%-------------------------------------------------------------------------------


%-------------------------------------------------------------------------------
%				 Identification
%-------------------------------------------------------------------------------
\ProvidesClass{awesome-cv}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%				 Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%				 3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{multicol}
% Needed to use multiple columns
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to manage math fonts
\RequirePackage{unicode-math}
% Needed to use icons from font-awesome
\RequirePackage{fontawesome}
\RequirePackage[default,opentype]{sourcesanspro}
% Needed for the photo ID
\RequirePackage[skins]{tcolorbox}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed for colored hlines
\RequirePackage{colortbl}
% Needed to add margin to blocks
\RequirePackage{scrextend}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode]{hyperref}
\hypersetup{
	pdftitle={},
	pdfauthor={},
	pdfsubject={},
	pdfkeywords={}
}

%-------------------------------------------------------------------------------
%				 Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure a directory location for fonts(default: 'fonts/')
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir


%-------------------------------------------------------------------------------
%				 Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
\geometry{left=0.4in, top=0.4in, right=0.5in, bottom=0.5in, footskip=1in}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}

\setlength{\parskip}{0pt}

\newbool{iscompact}
\setbool{iscompact}{false}

%-------------------------------------------------------------------------------
%				 Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\colorlet{darktext}{black}
\definecolor{text}{HTML}{414141}
\colorlet{graytext}{gray}
\definecolor{darkgraytext}{HTML}{2A2A2A}
\colorlet{lighttext}{lightgray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}

%-------------------------------------------------------------------------------
%				 Configuration for fonts
%-------------------------------------------------------------------------------
% Set the FontAwesome font to be up-to-date.
\newfontfamily\FA{FontAwesome}

% Set font for header (default is Roboto)
%\newfontfamily\headerfont{Roboto}
\newfontfamily\headerfont{Roboto}
\newfontfamily\headerfontlight{Roboto}

\newcommand*{\footerfont}{\sourcesanspro}
\newcommand*{\bodyfont}{\sourcesanspro}
\newcommand*{\bodyfontlight}{\sourcesansprolight}

%-------------------------------------------------------------------------------
%				 Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{\ifbool{iscompact}{22pt}{32pt}}{1em}\headerfontlight\bfseries\color{text} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{\ifbool{iscompact}{22pt}{32pt}}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{\ifbool{iscompact}{7pt}{7.5pt}}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\footerfont\scshape\color{lighttext} #1}}

\newcommand*{\sectionstyle}[1]{{\fontsize{\ifbool{iscompact}{14pt}{15pt}}{1em}\bodyfont\bfseries\color{darkgraytext}\hspace#1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{darktext}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darkgraytext}\MakeUppercase{#1}}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{darkgraytext} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\entrylocationdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{darktext} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorpositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorlocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{\ifbool{iscompact}{9pt}{10pt}}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{text} #1}}

% For elements of the cover letter
\newcommand*{\lettersectionstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\recipientaddressstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\recipienttitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\lettertitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\bfseries\color{darktext} \underline{#1}}}
\newcommand*{\letterdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\lettertextstyle}{\fontsize{10pt}{1.4em}\bodyfont\upshape\color{graytext}}
\newcommand*{\letternamestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\letterenclosurestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\slshape\color{lighttext} #1}}


%-------------------------------------------------------------------------------
%				 Commands for personal information
%-------------------------------------------------------------------------------

% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Define writer's position
% Usage: \name{<position>}
\newcommand*{\position}[1]{\def\@position{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's gitlab (optional)
% Usage: \gitlab{<gitlab-nick>}
\newcommand*{\gitlab}[1]{\def\@gitlab{#1}}

% Defines writer's stackoverflow profile (optional)
% Usage: \stackoverflow{<so userid>}{<so username>}
%	e.g.https://stackoverflow.com/users/123456/sam-smith
%		would be \stackoverflow{123456}{sam-smith}
\newcommand*{\stackoverflow}[2]{\def\@stackoverflowid{#1}\def\@stackoverflowname{#2}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Defines writer's quote (optional)
% Usage: \quote{<quote>}
\renewcommand*{\quote}[1]{\def\@quote{#1}}

% Defines recipient's information (cover letter only)
% Usage: \recipient{<recipient name>}{<recipient address>}
% Usage: \recipientname{<recipient name>}
% Usage: \recipientaddress{<recipient address>}
\newcommand*{\recipient}[2]{\def\@recipientname{#1}\def\@recipientaddress{#2}}
\newcommand*{\recipientname}[1]{\def\@recipientname{#1}}
\newcommand*{\recipientaddress}[1]{\def\@recipientaddress{#1}}

% Defines the title for letter (cover letter only, optional)
% Usage: \lettertitle{<title>}
\newcommand*{\lettertitle}[1]{\def\@lettertitle{#1}}

% Defines the date for letter (cover letter only)
% Usage: \letterdate{<date>}
\newcommand*{\letterdate}[1]{\def\@letterdate{#1}}

% Defines a message of opening for letter (cover letter only)
% Usage: \letteropening{<message>}
\newcommand*{\letteropening}[1]{\def\@letteropening{#1}}

% Defines a message of closing for letter (cover letter only)
% Usage: \letterclosing{<message>}
\newcommand*{\letterclosing}[1]{\def\@letterclosing{#1}}

% Defines an enclosure for letter (cover letter only, optional)
% Usage: \letterenclosure[<enclosure name>]{<enclosure>}
\newcommand*{\letterenclname}[1][Enclosure]{\def\@letterenclname{#1}}
\newcommand*{\letterenclosure}[2][]{
  % if an optional argument is provided, use it to redefine \enclname
	\ifthenelse{\equal{#1}{}}{}{\def\@letterenclname{#1}}
	\def\@letterenclosure{#2}
}


%-------------------------------------------------------------------------------
%				 Commands for extra
%-------------------------------------------------------------------------------
%% Define helper macros a user can change easily
% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{.4mm}
\newcommand{\acvHeaderAfterPositionSkip}{0mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\hspace{1.5mm}}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{6mm}
\newcommand{\acvHeaderAfterQuoteSkip}{5mm}
\newcommand{\acvAfterHeaderSkip}{0mm}

\newcommand{\acvCompactAfterHeaderSkip}{0mm}

% Others
\newcommand{\acvSectionTopSkip}{2mm}
\newcommand{\acvSectionContentTopSkip}{0mm}
\newcommand{\acvSectionTitleSep}{\hspace{1mm} \fontsize{10pt}{10pt}\bodyfont \color{darkgray} | \hspace{1mm}}

\newcommand{\acvCompactSectionTopSkip}{0.5mm}
\newcommand{\acvCompactSectionContentTopSkip}{1mm}


%-------------------------------------------------------------------------------
%				 Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\newcommand{\trule}{\color{lightgray}\vrule}
\newcommand{\gline}{\arrayrulecolor{lightgray}\hline}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%				 Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][C]{
	\newlength{\headertextwidth}
	\setlength{\headertextwidth}{\textwidth}
	\begin{minipage}[c]{\headertextwidth}
		\ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
		\headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}
		\\[\acvHeaderAfterNameSkip]
		\ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}
		\ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}
		\headersocialstyle{
			\newbool{isstart}
			\setbool{isstart}{true}
			\ifthenelse{\isundefined{\@mobile}}
			{}
			{
				\faMobile\acvHeaderIconSep\@mobile
				\setbool{isstart}{false}
			}
			\ifthenelse{\isundefined{\@email}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{mailto:\@email}{\faEnvelope\acvHeaderIconSep\@email}
			}
			\ifthenelse{\isundefined{\@homepage}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}
			}
			\ifthenelse{\isundefined{\@github}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://github.com/\@github}{\faGithub\acvHeaderIconSep github.com/\@github}
			}
			\ifthenelse{\isundefined{\@gitlab}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://gitlab.com/\@gitlab}{\faGitlab\acvHeaderIconSep\@gitlab}
			}
			\ifthenelse{\isundefined{\@stackoverflowid}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow\acvHeaderIconSep\@stackoverflowname}
			}
			\ifthenelse{\isundefined{\@linkedin}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://www.linkedin.com/in/\@linkedin}{\faLinkedin\acvHeaderIconSep\@linkedin}
			}
			\ifthenelse{\isundefined{\@twitter}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://twitter.com/\@twitter}{\faTwitter\acvHeaderIconSep\@twitter}
			}
			\ifthenelse{\isundefined{\@skype}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\faSkype\acvHeaderIconSep\@skype
			}
			\ifthenelse{\isundefined{\@reddit}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://www.reddit.com/user/\@reddit}{\faReddit\acvHeaderIconSep\@reddit}
			}
			\ifthenelse{\isundefined{\@xing}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\href{https://www.xing.com/profile/\@xing}{\faXingSquare\acvHeaderIconSep\@xing}
			}
			\ifthenelse{\isundefined{\@extrainfo}}
			{}
			{
				\ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
				\@extrainfo
			}
		} \\[\acvHeaderAfterSocialSkip]
		\ifthenelse{\isundefined{\@quote}}
			{}
			{\headerquotestyle{\@quote\\}\vspace{\acvHeaderAfterQuoteSkip}}
	\end{minipage}
	\vspace{\ifbool{iscompact}{\acvCompactAfterHeaderSkip}{\acvAfterHeaderSkip}}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{
	\fancyfoot{}
	\fancyfoot[L]{\footerstyle{#1}}
	\fancyfoot[C]{\footerstyle{#2}}
	\fancyfoot[R]{\footerstyle{#3}}
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{
	\vspace{\ifbool{iscompact}{\acvCompactSectionTopSkip}{\acvSectionTopSkip}}
	\sectionstyle{#1}
	\phantomsection
	\hspace{0.5mm}
	\color{gray}\vhrulefill{0.9pt}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{
	\vspace{\ifbool{iscompact}{\acvCompactSectionContentTopSkip}{\acvSectionContentTopSkip}}
	\subsectionstyle{#1}
	\phantomsection
}

% Define a paragraph for CV
\newenvironment{cvparagraph}{
	\vspace{\ifbool{iscompact}{\acvCompactSectionContentTopSkip}{\acvSectionContentTopSkip}}
	\paragraphstyle
	}{
	\par
	\vspace{2mm}
}

% Define an environment for cventry
% Usage: \cventry{<position>}{<title>|<prof>}{<subtitle>|<course>}{<location, date>}{<description>}
\newcommand*{\cventry}[5]{
	\vspace{\ifbool{iscompact}{\acvCompactSectionContentTopSkip}{\acvSectionContentTopSkip}}
	\entrytitlestyle{#1} \hfill \entrylocationdatestyle{#4}

	\def\@subline{\entrypositionstyle{#2}\entrylocationdatestyle{#3}}
	\ifthenelse{\isempty{#5}}{
		\ifthenelse{\isempty{\@subline}}{}{
			\vspace{-1.2mm}
			\entrypositionstyle{#2} \hfill \entrylocationdatestyle{#3}
		}
	}{
		\ifempty{\@subline}{}{
			\vspace{-0.6mm}
			\entrypositionstyle{#2} \hfill \entrylocationdatestyle{#3}
		}
		
		\descriptionstyle{#5}
	}
	\vspace{0.8mm}
}

% Define a command for cvskill
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{
	\setlength\tabcolsep{0pt}
	\setlength{\extrarowheight}{0pt}
	\begin{tabular*}{\textwidth}{R{2.3cm} @{\hskip 0.2cm} L{\columnwidth - 2.5cm}}
		\skilltypestyle{#1} & \skillsetstyle{#2}
	\end{tabular*}z
}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}[1][\bullet]{
	\begin{justify}
		\begin{enumerate}[label=#1, leftmargin=1em, rightmargin=0mm, nosep, noitemsep]
			}{
		\end{enumerate}
	\end{justify}
}

\newcommand{\cvcomment}[1]{
	\begin{flushright}
		\fontsize{8pt}{8pt}\bodyfont\color{darkgray}
		\textit{#1}
	\end{flushright}
}


%-------------------------------------------------------------------------------
%				 Commands for elements of Cover Letter
%-------------------------------------------------------------------------------
% Define an environment for cvletter
\newenvironment{cvletter}{
	\lettertextstyle
}{
}

% Define a section for the cover letter
% Usage: \lettersection{<section-title>}
\newcommand{\lettersection}[1]{
	\par\addvspace{2.5ex}
	\phantomsection{}
	\lettersectionstyle{#1}
	\color{gray}\vhrulefill{0.9pt}
	\par\nobreak\addvspace{0.4ex}
}

% Define a title of the cover letter
% Usage: \makelettertitle
\newcommand*{\makelettertitle}{
	\vspace{6mm}
	\ifthenelse{\isundefined{\@lettertitle}}
	{}
	{\lettertitlestyle{\@lettertitle}}

	\lettertextstyle{\@letteropening}
}

% Define a closing of the cover letter
% Usage: \makeletterclosing
\newcommand*{\makeletterclosing}{
	\vspace{3.4mm}
	\lettertextstyle{\@letterclosing}

	\letternamestyle{\@firstname\ \@lastname}
	\ifthenelse{\isundefined{\@letterenclosure}}
	{\\}
	{
		\\\\\\
		\letterenclosurestyle{\@letterenclname: \@letterenclosure} \\
	}
}
