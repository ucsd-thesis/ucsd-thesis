    %
% UCSD Dissertation Class
%
%   For the latest version go to:
%     http://ucsd-thesis.googlecode.com
%
%   Release info, modification history and author list below.
%
%
%   This file was originally based on the UC thesis template (see below
%   for documentation on that document).  As a result, this file
%   contains deprecated commentary, code, and options.
%
% for LaTeX version 2e - 11/3/94
%%% ====================================================================
%%%  @LaTeX-class-file{
%%%     filename       = "ucsd.cls",
%%%     version        = "3.6",
%%%
%%%     codetable       = "ISO/ASCII",
%%%     keywords        = "LaTeX, ucsd-thesis, ucsd, thesis",
%%%     url             = "http://ucsd-thesis.googlecode.com",
%%%
%%%     docstring       = "This file is the main file for the ucsd-thesis
%%%                        class, which is intended to meet the requirements
%%%                        for University of California San Diego
%%%                        Ph.D. dissertations.",
%%%
%%%
%%%                    UCTHESIS.STY v2.7 is based on the standard
%%%			   report.sty as modified by Mittelbach and Schopf in
%%%			   Jan 1992.  The primary differences are (1) the use
%%%			   of pseudo-double-spacing, except in certain special
%%%                        environments; and (2) the use of a 6 inch line
%%%                        with 0.5'' paragraph indentation.  It is only
%%%			   intended for single-sided printing.  Double-sided
%%%			   printing may be possible, but you're on
%%%			   your own.
%%%
%%%                        I know of no bugs in this implementation,
%%%                        but would be happy to hear of any problems
%%%                        that arise with it.
%%%
%%%                    Version 2.x fixes a bug in the previous
%%%			   version of 20 Jun 1988.  The bug was that
%%%			   "draft" optional mode didn't work because of
%%%			   problems in handling optional arguments.
%%%                        This file does not seem to work with earlier
%%%                        versions of LaTeX (pre-Jan 1992).
%%%
%%%                    Version 2.3 includes a single-spaced
%%%			   tabular* environment.
%%%
%%%                    Version 2.4 sets \evensidemargin correctly
%%%			   for two-sided style.  It also adds new
%%%			   environments (\smalltabular and
%%%			   \scriptsizetabular) which produce tables
%%%			   with smaller fonts.  The obvious methods
%%%			   of producing small-font tables don't work
%%%			   in ucthesis style.
%%%
%%%                    Version 2.5 adds support for the \maketitle
%%%			   macro.
%%%
%%%                    Version 2.6 adds support for complete and
%%%			   correct front matter.  Some dead code was
%%%			   removed, too.
%%%
%%%                    Version 2.7 adds front matter support for
%%%                        thesis committees of more than 3 people
%%%                        and for a labeled signature line on the
%%%                        abstract page.
%%%
%%%                    Version 3.0 - 1994-10-31
%%%                        Blaise B. Frederick
%%%
%%%                            Center for Functional Imaging
%%%	                         Lawrence Berkeley Laboratory
%%%                            MS 55-121
%%%                            1 Cyclotron Rd.
%%%	           	       Berkeley, CA 94720
%%%			       USA
%%%
%%%	                   (510) 486-4423
%%%	                   frederic@imasun.lbl.gov
%%%
%%%                        Supported until November 30, 1994
%%%
%%%                        A direct port to LaTeX2e from UCTHESIS
%%%			   v2.7 by Ethan V. Munson, with no changes other
%%%			   than those for compatibility.
%%%
%%%                        The major revisions in ucthesis.cls
%%%			   are converting option processing to LaTeX2e
%%%			   conventions.  The uct1x files have been revised
%%%			   to use the new font selection commands.
%%%
%%%			   Some users have had problems with the
%%%			   margins ending up too small on one side.
%%%			   This appears to be a DVI-to-PostScript
%%%			   driver or printer-adjustment problem.
%%%			   If you have such trouble, make small adjustments
%%%			   to the \textwidth and \oddsidemargin
%%%			   settings in your document preamble.
%%%
%%%			   Another problem some people have had is
%%%			   that you can't use \pagestyle{headings}
%%%			   and \markboth if you use \part.  The solution
%%%			   is to get the headerfooter style, which is
%%%			   nice and simple to use."
%%%
%%%
%%%                    Version 3.1 2008/05/13:
%%%			   Jason Bandlow       - JRB
%%%			   Ross Richardson     - RMR
%%%
%%%			   The file as modified by Will Brockman (see below)
%%%                        was brought into compliance with current OGS guidelines.
%%%                        This includes text spacing,
%%%			   adding ``Figure'' and ``Table'' to the TOF (TOL) entries,
%%%			   allowing for two Chapter headings,
%%%			   cleanup of frontmatter, compatibility with hyperref,
%%%                        compatibility with indexing,
%%%			   streamlining of template.
%%%			   Special thanks to John Farina for his initial fixes
%%%                        which prompted this release.
%%%
%%%			   Table of Contents bug fix (JRB)
%%%			   Appendix space in toc (RMR)
%%%
%%%
%%%                   Version 3.2 2009/02/23
%%%                        Diwaker Gupta <diwaker@floatingsun.net>
%%%
%%%                        Brought into compliance with
%%%                          OGS guidelines as of Nov 03 2008.
%%%                        Modified template with additional information.
%%%                        Honor user specified fonts in TOC/LOT/LOF.
%%%                        Suppress warning when using the subfig package.
%%%                        Add note about hyperref not working in draft mode.
%%%
%%%
%%%                   Version 3.3 2009/03/23
%%%                        Novimir Pablant <antoniuk@physics.ucsd.edu>
%%%
%%%                        Brought into compliance with
%%%                          OGS guidelines as of 2009/03/19.
%%%                          Passed the ruler lady on 2009/03/19.
%%%                        Letter page size now default, will reject other page sizes.
%%%                        Abstract indented properly.
%%%                        Indentations are of the correct size (0.5'').
%%%                        Extra page after Abstract removed.
%%%                        Reformatted revision history.
%%%
%%%                   Version 3.4 2009/05/01
%%%                        Novimir Pablant <antoniuk@physics.ucsd.edu>
%%%                        David Collins
%%%                        Macneil Shonle
%%%
%%%                        Added the co-chair to the abstract page.
%%%                        Added an option for two equal co-chairs.
%%%                        Adjusted spacing on the signature and vita
%%%                        pages.
%%%
%%%                   Version 3.5 2009/07/12
%%%                        Novimir Pablant <antoniuk@physics.ucsd.edu>
%%%
%%%                        Fixed spacing of preliminary entries in TOC.
%%%                        Fixed alignment of multi-line captions in TOF.
%%%                        Fixed spacing on the abstract page
%%%                          now multiline titles will be single spaced.
%%%                          Spacing between chair and co-chair single spaced.
%%%
%%%                   Version 3.6 2010/03
%%%                        Novimir Pablant <antoniuk@physics.ucsd.edu>
%%%
%%%                        Figure and Table lables now bold in captions.
%%%                        Top margin of abstract page now 2.5''
%%%
%%%                   Version 3.7 2010/06
%%%                        Novimir Pablant <antoniuk@physics.ucsd.edu>
%%%
%%%                        Links to abstract page fixed.
%%%
%%%  }
%%% ====================================================================
%%% To Do:
%%%
%%%   - Section titles don't break well.  These do not need to be
%%%     justified full.
%%%
%%%   - Vita titles don't break well.  I need to add more freedom to add
%%%     white space, or let the right hand side go ragged.
%%%     Update: In the OGS manual, this is not justified full.
%%%
%%%   - section and subsection titles are aligned differently.
%%%
%%%   - Page numbering is hard coded for parts of the front matter.
%%%     Instead, page numbering should be automatic, but a warning should
%%%     be displayed if it is not what is expected.
%%%
%%%   - A test page need to be added for the mathptmx font.
%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucsd}[2010/06/01 V3.7 University of California, San Diego, Dissertation Class]


%    ****************************************
%    *               OPTIONS                *
%    ****************************************
%
% Option values are now declared first thing.  Defaults are set to
% 11 point, onesided, final (ie not draft) mode (BBF 10/31/94)
\newcommand\@ptsize{}
\newcommand\@draftmark{}
\newcommand\@chapterheadsmark{0}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\renewcommand\@draftmark{1}}
\DeclareOption{final}{\renewcommand\@draftmark{0}}
% RMR - Toggle how chapters are listed
\DeclareOption{chapterheads}{\renewcommand\@chapterheadsmark{1}}

% Letter size (8.5"" x 11") is required for UCSD. Do not allow any other size.
\DeclareOption{landscape}
   {\ClassWarning{ucsd}{Paper orientation 'landscape' not valid for ucsd thesis.}}
\DeclareOption{legalpaper}
   {\ClassWarning{ucsd}{Paper size 'legalpaper' not valid for ucsd thesis.}}
\DeclareOption{a4paper}
   {\ClassWarning{ucsd}{Paper size 'a4paper' not valid for ucsd thesis.}}
\DeclareOption{a5paper}
   {\ClassWarning{ucsd}{Paper size 'a5paper' not valid for ucsd thesis.}}
\DeclareOption{executivepaper}
   {\ClassWarning{ucsd}{Paper size 'executivepaper' not valid for ucsd thesis..}}
\DeclareOption{b5paper}
   {\ClassWarning{ucsd}{Paper size 'b5paper' not valid for ucsd thesis.}}
\DeclareOption{letterpaper}
   {\ClassWarning{ucsd}{Paper size 'letterpaper' superfluous. Ignored.}}

\ExecuteOptions{11pt,oneside,final}

% CHOOSING THE TYPE SIZE:
%
%  The type size option is handled by reading a different file for each
%  size, as follows, to define font size-specific commands:
%       10pt : UCT10, 11pt : UCT11, 12pt : UCT12
%

%  Two-side or one-side printing.
%
% \@twosidefalse               %  Default is one-sided printing.
\def\ds@twoside{\@twosidetrue  %  Defines twoside option.
           \@mparswitchtrue}   %    Marginpars go on outside of page.

% This is a tricky solution to a tough bootstrapping problem.  The
% "draft" option requires the definition of the \ssp macro.  However,
% the \ssp macro requires that the uct1?.clo file has been loaded.  This
% loading is done by the \@options command which also invokes the
% \ds@draft macro.  This was a cyclic dependency in the previous
% version.  To break this dependency, I have made \ds@draft set a marker
% which is later tested to determine whether to actually do the draft
% mode actions.
%
% Ethan Munson (October 16, 1992)

% FMi 91/03/30: made twocolum.sty a file and twocolumn an option.

% RmS 91/10/15: moved actual reading of twocolumn.sty
%               to the end of this file.

\def\ds@twocolumn{\@twocolumntrue}

% The \ProcessOptions command causes the execution of every option command
% FOO which is declared and for which the user typed the FOO option in his
% \documentclass.  For every undeclared option BAR there will be a warning
% message. (BBF 10/31/94)

\ProcessOptions

\input uct1\@ptsize.clo\relax
\linespread{2}  % proper double-spacing.

% Set the paper size to letter
\setlength{\paperheight}{11.0in}
\setlength{\paperwidth}{8.5in}

% \smallssp is used to produce tabular environments in the small font.
% This is required because single-spacing requires a change in font size.
% \scriptsizessp is a still smaller version of the same thing.

\def\smallssp{\def\baselinestretch{1.0}\large\small}
\def\scriptsizessp{\def\baselinestretch{1.0}\large\scriptsize}

%  draft option (this is where the draft option is actually implemented)
%
% \overfullrule = 0pt             % Default is don't mark overfull hboxes.
\ifnum \@draftmark = 1
\ssp				  % Single-spaces and
\overfullrule 5pt		  % causes overfull hboxes to be marked.
\fi

% hyperref defines the command \phantomsection in order to place entries
% which can be referenced in the TOC.  We provide a null definition if it is not defined. - RMR 2007
\ifx\phantomsection\undefined
\def\phantomsection{}
\else \fi

% PREPARING A FOREIGN LANGUAGE VERSION:
%
% This document style is for documents prepared in the English language.
% To prepare a version for another language, various English words must
% be replaced.  Many of the English words that required replacement are
% indicated below, where we give the name of the command in which the
% words appear, and which must be redefined, with the actual words
% underlined.
%
% Other English words that need replacement can be found in the macros
% supporting the title and approval pages.
%
% \tableofcontents:
\def\contentsshortname{Contents}
\def\contentslongname{Table of Contents}
%                 ~~~~~~~~~~~~~~~~~
% (Changed WBB 5.27.97: added  ``Table of'', re UCSD OGSR style.)
%
% \listoffigures:
\def\listfigurename{List of Figures}
%                   ~~~~~~~~~~~~~~~
%
% \listoftables:
\def\listtablename{List of Tables}
%                  ~~~~~~~~~~~~~~
%
% \thebibliography:
\def\bibname{Bibliography}
%            ~~~~~~~~~~~~
%
% \theindex:
\def\indexname{Index}
%              ~~~~~
%
% figure environment:
\def\figurename{Figure}
%               ~~~~~~
%
% table environment:
\def\tablename{Table}
%              ~~~~~
%
% \chapter:
\def\chaptername{Chapter}
%                ~~~~~~~
% \appendix:
\def\appendixname{Appendix}
%                 ~~~~~~~~
% \part
\def\partname{Part}
%             ~~~~
% abstract environment:
\def\abstractshortname{Abstract of the Dissertation} % Used for TOC
\def\abstractlongname{Abstract of the Dissertation} % Used for Header
%                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% dedication:
\def\dedicationname{Dedication}
%                   ~~~~~~~~~~
%
% acknowledge environment:
\def\acknowledgename{Acknowledgements}
%                    ~~~~~~~~~~~~~~~~

\def\UCSD@text@chair{Chair}
\def\UCSD@text@cochair{Co-Chair}
%    ****************************************
%    *             FRONT MATTER             *
%    ****************************************
%

% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the front matter.

% The year the degree will be officially conferred
\def\degreeyear#1{\gdef\@degreeyear{#1}}

% The full (unabbreviated) name of the degree
\def\degreetitle#1{\gdef\@degreetitle{#1}}

% The name of your committee's chair
\def\chair#1{\gdef\UCSD@chair{#1}}

% The name of your committee's cochair (if applicable)
\def\cochair#1{\gdef\UCSD@cochair{#1}}

% The names of your committee's equal co-chairs
% (if applicable, and use this instead of chair and cochair)
\def\cochairs#1#2{
  \gdef\UCSD@cochairs{true}
  \gdef\UCSD@chair{#1}
  \gdef\UCSD@cochair{#2}
  \let\UCSD@text@chair\UCSD@text@cochair}

% The names of your other committe members, one per line,
% sorted alphabetically by last name.
\def\othermembers#1{\gdef\@othermembers{#1}}

% The number of committee members, which affects both the
% number of lines and the amount of space between lines
% on the approval page.
\def\@numberofmembers{3}
\def\@approvalspace{.75in}
\def\numberofmembers#1{\gdef\@numberofmembers{#1}
\ifnum \@numberofmembers > 3
\gdef\@approvalspace{.5in}
\fi}

% The name of your degree's field (e.g. Psychology, Computer Science)
\def\field#1{\gdef\@field{#1}}

% The name of your specialization (e.g. Anthropogeny, Computational Neuroscience)
\def\specialization#1{\gdef\@specialization{#1}}


% You have to define the campus name twice because I can't figure out
% how to get the TeX \uppercase macro to work for me (EVM, 9/21/94)

% The name of your UC Campus CAPITALIZED (e.g. Berkeley, Los Angeles)
% \def\campus#1{\gdef\@campus{#1}}
\def\@campus{San Diego}

\def\includefigureindex#1{\gdef\@includefigureindex{#1}}
\def\includetableindex#1{\gdef\@includetableindex{#1}}


% \alwayssingle and \endalwayssingle
%
% These macros define an environment for front matter that is always
% single column even in a double-column document.


\def\alwayssingle{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
     \else \newpage \fi}

\def\endalwayssingle{\if@restonecol\twocolumn \else \newpage \fi}

% \maketitle outputs the complete titlepage.  It requires all the
% above macros except \campuscap.  It is probably not correct for
% joint (e.g. UCSD/SDSU) degrees.

% Set the font that will be used in the front matter headings
\def\fmfont{\fontsize\@xiipt{14.5}\selectfont}
\def\fmsmallfont{\fontsize\@xiipt{14pt}\selectfont}

% JRB - Change textheight per OGS.  This gets the page numbers in the
% right place.
\addtolength{\topmargin}{-.5in}
\addtolength{\textheight}{.5in}
\addtolength{\footskip}{.25in}

\def\makefrontmatter{
% TITLE PAGE.
% This is the first page of the dissertation.  The format
% is specified by OGS.
%
{\ssp
\begin{alwayssingle}
    \thispagestyle{empty}
    \setcounter{page}{1}

    \null\vfil
  \begin{center}
    \fmfont
    UNIVERSITY OF CALIFORNIA, {\expandafter\uppercase\expandafter{\@campus}}\par
    \bigskip \medskip
    {\bfseries
     {\@title} \par}
    \bigskip \medskip
    A dissertation submitted in partial satisfaction of the \par
	\smallskip
    requirements for the degree \par
	\smallskip
    {\@degreetitle} \par
    \bigskip \medskip
    in \par
    \bigskip \medskip
    {\@field}
    \ifx\@specialization\@isnotdefined \else%
         (with a specialization in {\@specialization})\fi
    \par
    \bigskip \medskip
    by \par
    \bigskip \medskip
    {\@author} \par
  \end{center}
  {
    \vspace{6ex}
    \fmsmallfont
    Committee in charge:
    \begin{quote}
       {\UCSD@chair}, \UCSD@text@chair\newline
       \ifx\UCSD@cochair\@isnotdefined \else%
	     {\UCSD@cochair}, \UCSD@text@cochair\newline\fi
       {\@othermembers}
    \end{quote}
    \begin{center}
      {\@degreeyear}
    \end{center}
  }
  \vfil\null
\end{alwayssingle}

}


% COPYRIGHTPAGE
%
% While it's technically optional you probably want a copyright page.
% Note that if you don't have one, you need a completely blank page
% anyway.

\begin{alwayssingle}
\thispagestyle{empty}
\null\vfill\dsp
\begin{center}
{\fmfont
Copyright \par
\@author, \@degreeyear\par
All rights reserved.}
\end{center}
\end{alwayssingle}


% SIGNATURE PAGE
%
% This requires that the \year, \author, and \campus macros have been
% defined.  It uses lots of tricky spacing that is probably better
% handled with tabular environment code, but I'm too lazy to fix it.
% (EVM, 9/19/94)

\phantomsection
\addcontentsline{toc}{frontmatter}{\protect\numberline{}Signature Page}%
\begin{alwayssingle}
\null\vfill
\begin{center}
\vspace{.25in}
\vspace{\@approvalspace}
\makebox[4in][l]{\parbox{4in}{\fmfont The dissertation of {\@author}
is approved, and it is acceptable in quality and form for publication
on microfilm and electronically: }}\\
\begin{tabular*}{4in}[t]{r@{\extracolsep{\fill}}r}
& \rule{0pt}{\@approvalspace} \\
\hline
\ifnum \@numberofmembers > 2
  & \rule{0pt}{\@approvalspace} \\
  \hline
\fi
\ifnum \@numberofmembers > 3
  & \rule{0pt}{\@approvalspace} \\
  \hline
\fi
\ifnum \@numberofmembers > 4
  & \rule{0pt}{\@approvalspace} \\
  \hline
\fi
\ifnum \@numberofmembers > 5
  & \rule{0pt}{\@approvalspace} \\
  \hline
\fi
\ifnum \@numberofmembers > 6
  & \rule{0pt}{\@approvalspace} \\
  \hline
\fi

\ifx\UCSD@cochair\@isnotdefined% No cochair
  &\rule{0pt}{\@approvalspace} \\
  \hline
\else% Cochair
  &
  % Add the Co-Chair label below the last line and make
  % vertical space before adding another line.
  \newlength{\@tempapprovalspace}
  \settoheight{\@tempapprovalspace}{\UCSD@text@cochair}
  \setlength{\@tempapprovalspace}{-\@tempapprovalspace}
  \addtolength{\@tempapprovalspace}{-2pt}
  \raisebox{\@approvalspace}[\@approvalspace][0pt]%
  {\raisebox{\@tempapprovalspace}{\UCSD@text@cochair}}\\
  \hline
\fi

& \UCSD@text@chair
\end{tabular*}\\[\@approvalspace]
{\fmfont University of California, {\@campus}} \\
\vspace{-.25in}
\vspace{\@approvalspace}
{\fmfont \@degreeyear}
\end{center}
\vfill\null
\end{alwayssingle}

} % \makefrontmatter

% DEDICATION
%
% The dedication environment just makes sure the dedication gets its
% own page. The text is formatted with \large and \center.

\newenvironment{dedication}
{\phantomsection % RMR - hyperref requires a \section in order to place a hyperlink
\addcontentsline{toc}{frontmatter}{\protect\numberline{}Dedication}%
\begin{alwayssingle}
  \centerline{\expandafter\uppercase\expandafter{Dedication}}%
  \large\begin{center}
  }
{\end{center}\end{alwayssingle}}

% The mydedication environment has no formatting information, so the
% user can do whatever they wish.
\newenvironment{mydedication}
{\phantomsection
\addcontentsline{toc}{frontmatter}{\protect\numberline{}Dedication}%
  \centerline{\expandafter\uppercase\expandafter{Dedication}}}
{}



% EPIGRAPH
%
% The epigraph environment just makes sure the epigraph gets its
% own page. The text is formatted relatively high on the page and
% flush to the right.
\newenvironment{epigraph}
{\phantomsection
\addcontentsline{toc}{frontmatter}{\protect\numberline{}Epigraph}%
\begin{alwayssingle}
  \centerline{\expandafter\uppercase\expandafter{Epigraph}}%
  \vspace{2in}\hfill\begin{flushright}}
  %\parbox[t]{3in}
{\end{flushright}\end{alwayssingle}}

% The myepigraph environment has no formatting information, so the
% user can do whatever they wish.
\newenvironment{myepigraph}
{\phantomsection
\addcontentsline{toc}{frontmatter}{\protect\numberline{}Epigraph}%
  \centerline{\expandafter\uppercase\expandafter{Epigraph}}}%
{}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment creates a page and puts it in the
% TOC.
\newenvironment{acknowledgements}
{\begin{alwayssingle}
\phantomsection
\addcontentsline{toc}{frontmatter}{\protect\numberline{}\acknowledgename}%
\centerline{\expandafter\uppercase\expandafter{\acknowledgename}}%
\bigskip
}
{\end{alwayssingle}}

% VITA PAGE
%
% In the normal environments, the vitapage environment does nothing
% but start and end a page.  In two-column style it makes a one-column
% page.
%
\def\vitapage{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
     \else \newpage \fi\pagestyle{preliminary}
     \phantomsection
     \addcontentsline{toc}{frontmatter}{\protect\numberline{}Vita}}
% Special label for the vita list
%
\def\vitalabel#1{#1\hfill}
\def\vita{\begin{center}VITA\end{center}
     \list{}{\ssp \leftmargin 1.5in \labelwidth 1.2in \let\makelabel\vitalabel
           \labelsep 0.3in}}
\let\endvita\endlist

% For making "bibliographic-like" entries on the Vita page
%
\def\publications{\medskip\begin{center}PUBLICATIONS\end{center}
     \list{}{\ssp \leftmargin\z@}}
\let\endpublications\endlist

% ABSTRACT
%
% The ABSTRACT environment allows for multi-page abstracts which,
% in accordance with UC rules, is numbered separately from the rest
% of the rest of the dissertation in Arabic.  It requires definition
% of the \title, \author, \degreetitle, \field, \campus, and \chair macros.
% The page numbering is in the usual sequence for UCSD OGS--WBB.
%
% The OGS manual states that the top margin should be 2.5".

\def\abstract{
  \begin{alwayssingle}
  \phantomsection
  \addcontentsline{toc}{frontmatter}{\protect\numberline{}\abstractshortname}
  \begin{center}
  \ssp
  {\fmfont
  \null\vspace{1.25in}
  {\expandafter\uppercase\expandafter{\abstractlongname}}\par
  \vspace{.5in}
  {\bfseries
    {\@title} \par}
  \vspace{.5in}
  by\par
  \vspace{.5in}
  \@author\par
  \vspace{.3in}
  {\@degreetitle} in \@field
  \ifx\@specialization\@isnotdefined \else
      \ (with a specialization in \@specialization)
  \fi
  \par
  \vspace{.3in}
  University of California, {\@campus}, \@degreeyear \par
  \vspace{.3in}
  {\UCSD@chair}, \UCSD@text@chair
  %Check if there is a co-chair and add accordingly.
  \ifx\UCSD@cochair\@isnotdefined
  \else
    \par
    {\UCSD@cochair}, \UCSD@text@cochair
  \fi
  \vspace{.3in}
  } % Closes fmfont above
  \end{center}
  \par
}


\def\endabstract{\par\vfil\end{alwayssingle}
}


% FRONTMATTER environment
%
% The FRONTMATTER environment makes sure that page numbering is set
% correctly (roman, lower-case, starting at 3) for the front matter
% that follows the abstract.  It also resets page-numbering for
% the remainder of the dissertation (arabic, starting at 1).
% (WBB) At UCSD: put everything, including \titlepage,\copyrightpage,
% \approvalpage in frontmatter.
% Changed def. WBB to go with change in use of frontmatter.

\newenvironment{frontmatter}
{\pagestyle{preliminary}\pagenumbering{roman}}%
{\pagestyle{thesis}\pagenumbering{arabic}}


%    ****************************************
%    *                LISTS                 *
%    ****************************************
%

% ENUMERATE
%  Enumeration is done with four counters: enumi, enumii, enumiii
%  and enumiv, where enumN controls the numbering of the Nth level
%  enumeration.  The label is generated by the commands \labelenumi
%  ... \labelenumiv.  The expansion of \p@enumN\theenumN defines the
%  output of a \ref command.
%
% 16 Mar 88 -- changed defs of \labelenum... to use \theenum...

\def\labelenumi{\theenumi.}
\def\theenumi{\arabic{enumi}}

\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}

\def\labelenumiii{\theenumiii.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}

\def\labelenumiv{\theenumiv.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}

% ITEMIZE
% Itemization is controlled by four commands: \labelitemi, \labelitemii,
% \labelitemiii, and \labelitemiv, which define the labels of the
% various itemization levels.

\def\labelitemi{$\m@th\bullet$}
\def\labelitemii{\bfseries --}
\def\labelitemiii{$\m@th\ast$}
\def\labelitemiv{$\m@th\cdot$}


% VERSE
%   The verse environment is defined by making clever use of the
%   list environment's parameters.  The user types \\ to end a line.
%   This is implemented by \let'in \\ equal \@centercr.
%
\def\verse{\par\let\\=\@centercr
  \list{}{\ssp\itemsep\z@ \itemindent -1.5em\listparindent \itemindent
          \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist

% QUOTATION
%   Fills lines
%   Indents paragraph
%
\def\quotation{\par\list{}{\ssp\listparindent 1.5em
    \itemindent\listparindent
    \rightmargin\leftmargin\parsep \z@ plus\p@}\item[]}
\let\endquotation=\endlist

% QUOTE -- same as quotation except no paragraph indentation,
%
\def\quote{\par\list{}{\ssp\rightmargin\leftmargin}\item[]}
\let\endquote=\endlist

% DESCRIPTION
%
%  To change the formatting of the label, you must redefine
%  \descriptionlabel.

\def\descriptionlabel#1{\hspace\labelsep \bfseries #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
       \let\makelabel\descriptionlabel}}

\let\enddescription\endlist

\newdimen\descriptionmargin
\descriptionmargin=3em


%    ****************************************
%    *         OTHER ENVIRONMENTS           *
%    ****************************************
%
%
% VERBATIM
%
% standard verbatim mode driver macro is modified to use
% single-spacing.  There appears to be a small problem with extra
% vertical space (1 or 2 points worth) after this environment.
% Probably, this results from returning to double-spacing before
% issuing a \parskip, but I'm not enough of TeX hacker to figure out
% the source of the problem. (EVM, 9/25/94)
% 94/11/03 BBF converted \tt to \ttfamily

\def\@verbatim{\trivlist\ssp \item[]\if@minipage\else\vskip\parskip\fi
\leftskip\@totalleftmargin\rightskip\z@
\parindent\z@\parfillskip\@flushglue\parskip\z@
%%RmS 91/08/26 Added \@@par to clear possible \parshape definition
%%from a surrounding list (the verbatim guru says)
\@@par
\@tempswafalse \def\par{\if@tempswa\hbox{}\fi\@tempswatrue\@@par
\penalty\interlinepenalty}%
\obeylines \ttfamily \catcode``=13 \@noligs \let\do\@makeother \dospecials}

% ARRAY AND TABULAR
%

\arraycolsep 5pt     % Half the space between columns in an array
                     % environment.
\tabcolsep 6pt       % Half the space between columns in a tabular
                     % environment.
\arrayrulewidth .4pt % Width of rules in array and tabular environment.
\doublerulesep 2pt   % Space between adjacent rules in array or tabular
                     % environment.

% We have to redefine array here in order to make it single-spaced.
% (Not sure if this is really necessary.)
\def\array{\let\@acol\@arrayacol \let\@classz\@arrayclassz
 \let\@classiv\@arrayclassiv \let\\\@arraycr\let\@halignto\@empty\@tabarray}

% TABBING
%
\tabbingsep \labelsep   % Space used by the \' command.
                        %  (See LaTeX manual.)

% We have to redefine tabular here in order to make it single-spaced.
\def\tabular{\par\ssp\let\@halignto\@empty\@tabular}
\expandafter \def\csname tabular*\endcsname #1%
{\par\ssp\def\@halignto{to#1}\@tabular}

% \smalltabular and \smalltabular* are alternative tabular styles
% in the \small font.  They are required because single-spacing implies a
% change of font to a particular size.
% EVM, 7/20/93
\def\smalltabular{\par\smallssp\let\@halignto\@empty\@tabular}
\def\endsmalltabular{\endtabular}
\expandafter \def\csname smalltabular*\endcsname #1%
{\par\smallssp\def\@halignto{to#1}\@tabular}
\expandafter \let \csname endsmalltabular*\endcsname = \endtabular

% \scriptsizetabular and \scriptsizetabular* are analogs of \smalltabular
\def\scriptsizetabular{\par\scriptsizessp\let\@halignto\@empty\@tabular}
\def\endscriptsizetabular{\endtabular}
\expandafter \def\csname scriptsizetabular*\endcsname #1%
{\par\scriptsizessp\def\@halignto{to#1}\@tabular}
\expandafter \let \csname endscriptsizetabular*\endcsname = \endtabular

% MINIPAGE
%  \@minipagerestore is called upon entry to a minipage environment to
%  set up things that are to be handled differently inside a minipage
%  environment. In the current styles, it does nothing.
%
% \skip\@mpfootins : plays same role for footnotes in a minipage as
%                    \skip\footins does for ordinary footnotes

\skip\@mpfootins = \skip\footins

% FRAMEBOX
%
\fboxsep = 3pt    % Space left between box and text by \fbox and
                  % \framebox.
\fboxrule = .4pt  % Width of rules in box made by \fbox and \framebox.


%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************
%
% DEFINE COUNTERS:
%
% \newcounter{NEWCTR}[OLDCTR] : Defines NEWCTR to be a counter, which is
%                               reset to zero when counter OLDCTR is
%                               stepped.
%                               Counter OLDCTR must already be defined.

% Must redefine @startsection so that we always get indentation.
\def\@startsection#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
   \par \@tempskipa #4\relax
   \@afterindenttrue
   \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \relax\fi
   \if@nobreak \everypar{}\else
     \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi \@ifstar
     {\@ssect{#3}{#4}{#5}{#6}}{\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}

\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

% For any counter CTR, \theCTR is a macro that defines the printed
% version of counter CTR.  It is defined in terms of the following
% macros:
%
%  \arabic{COUNTER} : The value of COUNTER printed as an arabic numeral.
%  \roman{COUNTER}  : Its value printed as a lower-case roman numberal.
%  \Roman{COUNTER}  : Its value printed as an upper-case roman numberal.
%  \alph{COUNTER}   : Value of COUNTER printed as a lower-case letter:
%                         1 = a, 2 = b, etc.
%  \Alph{COUNTER}   : Value of COUNTER printed as an upper-case letter:
%                           1 = A, 2 = B, etc.
%

\def\thepart          {\Roman{part}}
\def\thechapter       {\arabic{chapter}}
\def\thesection       {\thechapter.\arabic{section}}
\def\thesubsection    {\thesection.\arabic{subsection}}
\def\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\def\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph  {\theparagraph.\arabic{subparagraph}}

% \@chapapp is initially defined to be '\chaptername'.  The \appendix
% command redefines it to be '\appendixname'.
%
\def\@chapapp{\chaptername}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PART                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Parts aren't defined by the UCSD OGSR, so this section has been
% commented out.  Why?  Because the sample pages given in the OGSR
% guidelines handout doesn't have a sample page for parts, and thus
% it is unknown how to handle them.  -BB -(WBB)
% Left in, WBB, but noted; maybe should get rid of this?
%
\def\part{\cleardoublepage   % Starts new page.
   \thispagestyle{plain}%    % Page style of part page is 'plain'
  \if@twocolumn              % IF two-column style
     \onecolumn              %  THEN \onecolumn
     \@tempswatrue           %       @tempswa := true
    \else \@tempswafalse     %  ELSE @tempswa := false
  \fi                        % FI
  \hbox{}\vfil               % Add fil glue to center title
%  \bgroup  \centering      % BEGIN centering %% Removed 19 Jan 88
  \secdef\@part\@spart}

\def\@part[#1]#2{\ifnum \c@secnumdepth >-2\relax  % IF secnumdepth > -2
        \refstepcounter{part}%                    %   THEN step
                                                  %         part counter
        \addcontentsline{toc}{part}{\thepart      %        add toc line
        \hspace{1em}#1}\else                      %   ELSE add
                                                  %         unnumb. line
        \addcontentsline{toc}{part}{#1}\fi        % FI
   \markboth{}{}%
   {\centering                       % %% added 19 Jan 88
    \interlinepenalty \@M            %% RmS added 11 Nov 91
    \ifnum \c@secnumdepth >-2\relax  % IF secnumdepth > -2
      \huge\bfseries \partname~\thepart    %   THEN Print '\partname' and
    \par                             %         number in \huge bold.
    \vskip 20\p@\fi                  %        Add space before title.
    \Huge \bfseries                        % FI
    #2\par}\@endpart}                % Print Title in \Huge bold.
                                     % Bug Fix 13 Nov 89: #1 -> #2


% \@endpart finishes the part page
%
\def\@endpart{\vfil\newpage   % End page with 1fil glue.
   \if@twoside                % IF twoside printing
       \hbox{}%               %   THEN Produce totally blank page
       \thispagestyle{empty}%
       \newpage
   \fi                        % FI
   \if@tempswa                % IF @tempswa = true
     \twocolumn               %   THEN \twocolumn
   \fi}                       % FI

\def\@spart#1{{\centering      % %% added 19 Jan 88
   \interlinepenalty \@M       %% RmS added 11 Nov 91
   \Huge \bfseries                   % Print title in \Huge boldface
   #1\par}\@endpart}




%
%    ****************************************
%    *         TABLE OF CONTENTS, ETC.      *
%    ****************************************
%
% A \subsection command writes a
%       \contentsline{subsection}{TITLE}{PAGE}
% command on the .toc file, where TITLE contains the contents of the
% entry and PAGE is the page number.  If subsections are being numbered,
% then TITLE will be of the form
%       \numberline{NUM}{HEADING}
% where NUM is the number produced by \thesubsection.  Other sectioning
% commands work similarly.
%
% A \caption command in a 'figure' environment writes
%    \contentsline{figure}{\numberline{NUM}{CAPTION}}{PAGE}
% on the .lof file, where NUM is the number produced by \thefigure and
% CAPTION is the figure caption.  It works similarly for a 'table'
% environment.
%
% The command \contentsline{NAME} expands to \l@NAME.  So, to specify
% the table of contents, we must define \l@chapter, \l@section,
% \l@subsection, ... ; to specify the list of figures, we must define
% \l@figure; and so on.  Most of these can be defined with the
% \@dottedtocline command, which works as follows.
%
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE}
%    LEVEL    : An entry is produced only if LEVEL < or = value of
%               'tocdepth' counter.  Note, \chapter is level 0, \section
%               is level 1, etc.
%    INDENT   : The indentation from the outer left margin of the start
%               of the contents line.
%    NUMWIDTH : The width of a box in which the section number is to go,
%               if TITLE includes a \numberline command.
%
% This command uses the following three parameters, which are set
% with a \def (so em's can be used to make them depend upon the font).
%   \@pnumwidth : The width of a box in which the page number is put.
%   \@tocrmarg  : The right margin for multiple line entries.  One
%                 wants \@tocrmarg > or = \@pnumwidth
%   \@dotsep    : Separation between dots, in mu units.  Should be
%                 \def'd to a number like 2 or 1.7

\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{2}


% TABLEOFCONTENTS
%  In ucsd-thesis style, \tableofcontents, \listoffigures, etc. are always
%  set in single-column style.  @restonecol
%  We also change ``Contents'' to ``TABLE OF CONTENTS'' --(WBB)

\def\tableofcontents{\@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi%
% From ucsd-thesis.sty (WBB), modified
  \newpage
  \phantomsection
  \addcontentsline{toc}{frontmatter}{\protect\numberline{}\contentslongname}%
  \centerline{\expandafter\uppercase\expandafter{\contentslongname}}%
  \bigskip%
%  \chapter*{\contentsname
%        \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}%
  {\ssp\@starttoc{toc}}\if@restonecol\twocolumn\fi}

\def\l@part#1#2{\addpenalty{-\@highpenalty}%
   \addvspace{2.25em plus\p@}% space above part line
   \begingroup
   \@tempdima 3em         % width of box holding part number, used by
     \parindent \z@ \rightskip \@pnumwidth             %% \numberline
     \parfillskip -\@pnumwidth
     {\large \bfseries          % set line in \large boldface
     \leavevmode          % TeX command to enter horizontal mode.
     #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
     \nobreak             % Never break after part entry
    \global\@nobreaktrue                        %% Added 24 May 89 as
    \everypar{\global\@nobreakfalse\everypar{}}%% suggested by
                                               %% Jerry Leichter
   \endgroup}

%% First line of l@chapter changed 24 May 89, as suggested
%% by Jerry Leichter.
%% Simpler version substituted, WBB 6.11.97 to get dots
%% Bold would be OK but I'm not getting the dots to work right.
%
%\def\l@chapter#1#2{\addpenalty{-\@highpenalty}%
%   \vskip 1.0em plus\p@   % space above chapter line
%   \@tempdima 1.5em       % width of box holding chapter number
%   \begingroup
%     \parindent \z@ \rightskip \@pnumwidth
%     \parfillskip -\@pnumwidth
%     \bfseries                  % Boldface.
%     \leavevmode          % TeX command to enter horizontal mode.
%      \advance\leftskip\@tempdima  %% added 5 Feb 88 to conform to
%      \hskip -\leftskip            %% 25 Jan 88 change to \numberline
%     #1\nobreak \nobreak\leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}\hfill\nobreak\hbox to\@pnumwidth{\hss #2}\par
%     \penalty\@highpenalty %% added 24 May 89, suggested by J. Leichter
%   \endgroup}

\newlength{\@chapterlength} % Original Magic Value - RMR
\setlength{\@chapterlength}{1.5em} % This code adds space for \@chapapp for toc entries
\ifnum \@chapterheadsmark = 1
\settowidth{\@chapterlength}{\@chapapp}
\addtolength{\@chapterlength}{2.6em} % Space between toc labels and values
\fi

\def\l@chapter{\normalfont\pagebreak[3]\vskip 1em plus 1pt \@dottedtocline{0}{0em}{\@chapterlength}}

\newlength{\UCSD@toc@frontmatterLength}
\setlength{\UCSD@toc@frontmatterLength}{0em}
% Use the following line to have the front matter title aligned with
% the chapter titles.  Otherwise they will aligned to the left (as required by OGS.)
%\setlength{\UCSD@toc@frontmatterLength}{0em}
\def\l@frontmatter{\normalfont\vskip 1em plus 1pt \@dottedtocline{0}{0em}{\UCSD@toc@frontmatterLength}}


\newlength{\UCSD@toc@backmatterLength}
\setlength{\UCSD@toc@backmatterLength}{0em}
% Use the following line to have the back matter title aligned with
% the chapter titles.  Otherwise they will aligned to the left (as required by OGS.)
%\setlength{\UCSD@toc@backmatterLength}{0em}
\def\l@backmatter{\normalfont\vskip 1em plus 1pt \@dottedtocline{0}{0em}{\UCSD@toc@frontmatterLength}}


\def\l@section{\normalfont\@dottedtocline{1}{\@chapterlength}{2.3em}}

\newlength{\@subsectionlength}
\setlength{\@subsectionlength}{\@chapterlength}
\addtolength{\@subsectionlength}{2.3em}
\def\l@subsection{\normalfont\@dottedtocline{2}{\@subsectionlength}{3.2em}}

\newlength{\@subsubsectionlength}
\setlength{\@subsubsectionlength}{\@chapterlength}
\addtolength{\@subsubsectionlength}{5.5em}
\def\l@subsubsection{\normalfont\@dottedtocline{3}{\@subsubsectionlength}{4.1em}}

\newlength{\@paragraphlength}
\setlength{\@paragraphlength}{\@chapterlength}
\addtolength{\@paragraphlength}{8.5em}
\def\l@paragraph{\normalfont\@dottedtocline{4}{\@paragraphlength}{5em}}

\newlength{\@subparagraphlength}
\setlength{\@subparagraphlength}{\@chapterlength}
\addtolength{\@subparagraphlength}{10.5em}
\def\l@subparagraph{\normalfont\@dottedtocline{5}{\@subparagraph}{6em}}

% LIST OF FIGURES
%
% Single-space list of figures, add it to the table of contents.
\def\listoffigures{%
  \@restonecolfalse%
  \if@twocolumn\@restonecoltrue\onecolumn\fi%
  \newpage%
  \centerline{\expandafter\uppercase\expandafter{\listfigurename}}%
  \bigskip%
  \phantomsection%
  \addcontentsline{toc}{frontmatter}{\protect\numberline{}\listfigurename }%
  %This group overloads \numberline to output ``Figure 1.3'' instead of ``1.3''
  \begingroup%
    \let\ORIG@numberline\numberline%
    \renewcommand*{\numberline}[1]{%
      \ORIG@numberline{\figurename~##1:}}%
    {\ssp\@starttoc{lof}}%
    \if@restonecol\twocolumn\fi%
  \endgroup %
  }

\newlength{\@figurelength}
\settowidth{\@figurelength}{\figurename }
% Magic value, but consistent with the standard figure length
\addtolength{\@figurelength}{2.8em}
\def\l@figure{\normalfont\@dottedtocline{1}{0em}{\@figurelength}}

% LIST OF TABLES
%
% Single-space list of tables, add it to the table of contents.
\def\listoftables{%
  \@restonecolfalse%
  \if@twocolumn\@restonecoltrue\onecolumn\fi%
  \newpage%
  \centerline{\expandafter\uppercase\expandafter{\listtablename}}%
  \bigskip%
  \phantomsection%
  \addcontentsline{toc}{frontmatter}{\protect\numberline{}\listtablename }%
  % This group overloads \numberline to output ``Table 1.3'' instead of ``1.3''
  \begingroup%
    \let\ORIG@numberline\numberline%
    \renewcommand*{\numberline}[1]{\ORIG@numberline{\tablename~##1:}}%
    {\ssp\@starttoc{lot}}%
    \if@restonecol\twocolumn\fi%
  \endgroup %
  }

\newlength{\@tablelength}
\settowidth{\@tablelength}{\tablename }
% Magic value, but consistent with the standard table length.
\addtolength{\@tablelength}{2.8em}
\def\l@table{\normalfont\@dottedtocline{1}{0em}{\@tablelength}}


%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
% The thebibliography environment executes the following commands:
%
%  \def\newblock{\hskip .11em plus .33em minus .07em} --
%      Defines the `closed' format, where the blocks (major units of
%      information) of an entry run together.
%
%  \sloppy  -- Used because it's rather hard to do line breaks in
%      bibliographies,
%
%  \sfcode`\.=1000\relax --
%      Causes a `.' (period) not to produce an end-of-sentence space.

%% RmS 91/10/27 [ .. ] replaced by \@biblabel{ .. }
%% RmS 91/11/13: Changed counter enumi to enumiv,
%%               as it says in the comment in latex.tex
%% RmS 92/01/14: Set \p@enumiv to {} and \theenumiv to \arabic{enumiv}
%%               to get correct references
\def\thebibliography#1{\chapter*{\bibname\@mkboth
  {\expandafter\uppercase\expandafter{\bibname}}{\expandafter\uppercase\expandafter{\bibname}}}
  \addcontentsline{toc}{backmatter}{\bibname}
  \ssp %WBB re OGSR style, 6.11.97
  \list{\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}


%% 91/08/26 FMI & RmS: introduced warning instead of error

\def\endthebibliography{%
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
  \endlist}


% \def\@biblabel#1{[#1]\hfill}  % Produces the label for a \bibitem[...]
                                % command.
% \def\@cite#1{[#1]}            % Produces the output of the \cite
                                % command.



%    ****************************************
%    *              THE INDEX               *
%    ****************************************
%
% THE THEINDEX ENVIRONMENT
% Produces double column format, with each paragraph a separate entry.
% The user commands \item, \subitem and \subsubitem are used to
% produce the entries, and \indexspace adds an extra vertical space
% that's the right size to put above the first entry with a new letter
% of the alphabet.

\newif\if@restonecol

\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35\p@\twocolumn[\@makeschapterhead{\indexname}]%
    \@mkboth{\uppercase{\indexname}}{\uppercase{\indexname}}%
    \thispagestyle{plain}\parindent\z@
    \parskip\z@ plus .3\p@\relax\let\item\@idxitem
\phantomsection
\addcontentsline{toc}{backmatter}{\indexname}
}

\def\@idxitem{\par\hangindent 40\p@}

\def\subitem{\par\hangindent 40\p@ \hspace*{20\p@}}

\def\subsubitem{\par\hangindent 40\p@ \hspace*{30\p@}}

\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}

\def\indexspace{\par \vskip 10\p@ plus5\p@ minus3\p@\relax}


%    ****************************************
%    *             FOOTNOTES                *
%    ****************************************
%
% \footnoterule is a macro to draw the rule separating the footnotes
% from the text.  It should take zero vertical space, so it needs a
% negative skip to compensate for any positive space taken by the rule.
% (See PLAIN.TEX.)

\def\footnoterule{\kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}                 % The \hrule has default height of .4pt.

% \newcounter{footnote}
\@addtoreset{footnote}{chapter}  % Numbers footnotes within chapters

%   \@makefntext{NOTE} :
%        Must produce the actual footnote, using \@thefnmark as the mark
%        of the footnote and NOTE as the text.  It is called when
%        effectively inside a \parbox of width \columnwidth (i.e., with
%        \hsize = \columnwidth).
%
%        The following macro indents all lines of the footnote by 10pt,
%        and indents the first line of a new paragraph by 1em.  To
%        change these dimensions, just substitute the desired value for
%        '10pt' [in both places] or '1em'.  The mark is flushright
%        against the footnote.
%          \long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize
%             \advance\@tempdima-10pt\parshape \@ne 10pt \@tempdima}\par
%             \parindent 1em\noindent
%             \hbox to \z@{\hss$\m@th^{\@thefnmark}$}#1}
%
%        A simpler macro is used, in which the footnote text is
%        set like an ordinary text paragraph, with no indentation except
%        on the first line of a paragraph, and the first line of the
%        footnote.  Thus, all the macro must do is set \parindent
%        to the appropriate value for succeeding paragraphs and put the
%        proper indentation before mark.

\long\def\@makefntext#1{\parindent 1em\noindent
            \hbox to 1.8em{\hss$\m@th^{\@thefnmark}$}#1}

% \@makefnmark : A macro to generate the footnote marker that goes
%    in the text.  Default used.
%


% Single-space footnotes.
\long\def\@footnotetext#1{\insert\footins{\ssp\reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces
      #1\strut}}}

%    ****************************************
%    *         FIGURES AND TABLES           *
%    ****************************************
%
% Float placement parameters.  See LaTeX manual for their definition.
%
\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}

% \@makecaption{NUMBER}{TEXT} : Macro to make a figure or table caption.
%      NUMBER : Figure or table number--e.g., 'Figure 3.2'
%      TEXT   : The caption text.
%  Macro should be called inside a \parbox of right width, with
%  \normalsize.
% changed 25 Jun 86 to fix according to Howard Trickey:
% instead of \unhbox\@tempboxa\par we do #1: #2\par

% 15 Nov 93: further changes to support captions BEFORE the figure
% or table.  Changes suggested by Donald Arseneau, installed by Ethan
% Munson.  Detailed reasons are:
%	The \unhbox allows \vadjust material (\vspace) to get out;
%	the \vbox to\topskip{} is for captions at the top of top-floats;
%	the \ifdim is for captions above the figure or table;
%	the strut is for tables below the caption.

\long\def\@makecaption#1#2{% Add space only if something is ...
   \par\ifdim\prevdepth>-\p@ \vskip 10\p@\relax \fi % above the caption
   \setbox\@tempboxa\hbox{\vbox to\topskip{}#1: #2\unskip\strut}%
   \ifdim \wd\@tempboxa >\hsize      % IF longer than one line:
       {\ssp#1: #2\unskip\strut\par} %   THEN set as ordinary paragraph.
     \else                           %   ELSE  center.
       \hbox to\hsize{\hfil\unhbox\@tempboxa\hfil}%
   \fi}

% To define a float of type TYPE (e.g., TYPE = figure), the document
% style must define the following.
%
%  \fps@TYPE   : The default placement specifier for floats of type
%                TYPE.
%
% \ftype@TYPE : The type number for floats of type TYPE.  Each TYPE
%                has associated a unique positive TYPE NUMBER, which
%                is a power of two.  E.g., figures might have type
%                number 1, tables type number 2, programs type number
%                4, etc.
%
% \ext@TYPE : The file extension indicating the file on which the
%                contents list for float type TYPE is stored.  For
%                example, \ext@figure = 'lof'.
%
%  \fnum@TYPE  : A macro to generate the figure number for a caption.
%                For example, \fnum@TYPE == Figure \thefigure.
%
%  The actual float-making environment commands--e.g., the commands
%  \figure and \endfigure--are defined in terms of the macros \@float
%  and \end@float, which are described below.
%
% \@float{TYPE}[PLACEMENT] : Macro to begin a float environment for a
%     single-column float of type TYPE with PLACEMENT as the placement
%     specifier.  The default value of PLACEMENT is defined by
%     \fps@TYPE.  The environment is ended by \end@float.  E.g.,
%     \figure == \@float{figure}, \endfigure == \end@float.


% FIGURE

\newcounter{figure}[chapter]
\def\thefigure{\thechapter.\@arabic\c@figure}

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\textbf{\figurename~\thefigure}}
\def\figure{\@float{figure}}
\def\endfigure{\end@float}
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}

% TABLE
%
\newcounter{table}[chapter]
\def\thetable{\thechapter.\@arabic\c@table}

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\textbf{\tablename~\thetable}}
\def\table{\@float{table}}
\def\endtable{\end@float}
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}


%    ****************************************
%    *            PAGE STYLES               *
%    ****************************************
%
% The page style 'foo' is defined by defining the command \ps@foo.  This
% command should make only local definitions.  There should be no stray
% spaces in the definition, since they could lead to mysterious extra
% spaces in the output.
%
% The \ps@... command defines the macros \@oddhead, \@oddfoot,
% \@evenhead, and \@evenfoot to define the running heads and
% feet---e.g., \@oddhead is the macro to produce the contents of the
% heading box for odd-numbered pages.  It is called inside an \hbox of
% width \textwidth.
%
% To make headings determined by the sectioning commands, the page style
% defines the commands \chaptermark, \sectionmark, ... , where
% \chaptermark{TEXT} is called by \chapter to set a mark, and so on.
% The \...mark commands and the \...head macros are defined with the
% help of the following macros.  (All the \...mark commands should be
% initialized to no-ops.)
%
% MARKING CONVENTIONS:
% LaTeX extends TeX's \mark facility by producing two kinds of marks
% a 'left' and a 'right' mark, using the following commands:
%     \markboth{LEFT}{RIGHT} : Adds both marks.
%     \markright{RIGHT}      : Adds a 'right' mark.
%     \leftmark  : Used in the \@oddhead, \@oddfoot, \@evenhead or
%                  \@evenfoot macro, gets the current 'left' mark.
%                  Works like TeX's \botmark command.
%     \rightmark : Used in the \@oddhead, \@oddfoot, \@evenhead or
%                  \@evenfoot macro, gets the current 'right' mark.
%                  Works like TeX's \firstmark command.
% The marking commands work reasonably well for right marks 'numbered
% within' left marks--e.g., the left mark is changed by a \chapter
% command and the right mark is changed by a \section command.  However,
% it does produce somewhat anomalous results if two \bothmark's occur on
% the same page.
%
%
% Commands like \tableofcontents that should set the marks in some
% page styles use a \@mkboth command, which is \let by the pagestyle
% command (\ps@...)  to \markboth for setting the heading or
% \@gobbletwo to do nothing.

\mark{{}{}}   % Initializes TeX's marks

% \ps@empty defined in LATEX.TEX

% Definition of 'headings' page style
%  Note the use of ##1 for parameter of \def\chaptermark inside the
%  \def\ps@headings.
%
% 91/03/26 FMi: Added extra set of braces arround |\sl| in |\@oddhead|
% to support NFSS (|\sl| is a shape |\rm| a family). Also remove
% unnecessary |\hbox{}| commands.
%
% 94/11/3 BBF: Eliminated two letter font selection commands \rm and \sl
% in favor of \rmfamily and \slshape.
%

\if@twoside         % If two-sided printing.
\def\ps@headings{\let\@mkboth\markboth
 \def\@oddfoot{}\def\@evenfoot{}%       No feet.
 \def\@evenhead{\rmfamily \thepage\hfil \slshape \leftmark}%    Left heading.
 \def\@oddhead{{\slshape \rightmark}\hfil \rmfamily\thepage}% Right heading.
 \def\chaptermark##1{\markboth {\uppercase{\ifnum \c@secnumdepth >\m@ne
      \@chapapp\ \thechapter. \ \fi ##1}}{}}%
 \def\sectionmark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\z@
   \thesection. \ \fi ##1}}}}
\else               % If one-sided printing.
\def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}%     No feet.
\def\@oddhead{{\slshape \rightmark}\hfil \rmfamily\thepage}% Heading.
\def\chaptermark##1{\markright {\uppercase{\ifnum \c@secnumdepth >\m@ne
  \@chapapp\ \thechapter. \ \fi ##1}}}}
\fi

% Definition of 'myheadings' page style.
%
\def\ps@myheadings{\let\@mkboth\@gobbletwo
 \def\@oddhead{{\slshape\rightmark}\hfil \rmfamily\thepage}%
 \def\@oddfoot{}\def\@evenhead{\rmfamily \thepage\hfil\slshape\leftmark}%
 \def\@evenfoot{}\def\chaptermark##1{}\def\sectionmark##1{}%
 \def\subsectionmark##1{}}

% Definition of 'plain' page style.
\addtolength{\oddsidemargin}{-.55in} %makes left and right margin 1"
\addtolength{\textwidth}{.55in} %makes left and right margin 1"
%
\def\ps@plain{\let\@mkboth\markboth%
\def\@oddfoot{\hbox{}\hfil\rmfamily\thepage\hfil\hbox{}}% Pgno bot center
\def\@evenfoot{\hbox{}\hfil\rmfamily\thepage\hfil\hbox{}}%
\def\@oddhead{}% heading (right)
\def\@evenhead{}% heading (left)
%\pagenumbering{arabic}}					% (WBB)
}

% Definition of 'thesis' page style.
%
\def\ps@thesis{\let\@mkboth\markboth%
\def\@oddfoot{\hbox{}\hfil\rmfamily\thepage\hfil\hbox{}}% Pgno bot center
\def\@evenfoot{\hbox{}\hfil\rmfamily\thepage\hfil\hbox{}}%
\def\@oddhead{}% heading (right)
\def\@evenhead{}}% heading (left)
%\pagenumbering{arabic}}					% (WBB)

% Definition of 'preliminary' page style.
%
\def\ps@preliminary{\let\@mkboth\@gobbletwo
     \def\@oddhead{}\def\@oddfoot{\rmfamily\hfil\thepage
     \hfil}\def\@evenhead{}\let\@evenfoot\@oddfoot
%     \pagenumbering{roman}
}


% Definition of 'facing caption' page style
% This is a left-hand page, and so everything is mirror-imaged:
% page numbering and margins
%

\def\ps@facingcaption{\let\@mkboth\@gobbletwo
     \def\@oddhead{\rmfamily\thepage\hfil} \def\oddfoot{}
     \let\@evenhead\@oddhead \def\@evenfoot{}
     \oddsidemargin 0in \let\evensidemargin\oddsidemargin
}


%    ****************************************
%    *            MISCELLANEOUS             *
%    ****************************************
%
% DATE
%
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

% EQUATION and EQNARRAY -- put here because it must follow \chapter
% definition
%
% \newcounter{equation}
%
\@addtoreset{equation}{chapter}   % Makes \chapter reset 'equation'
                                  % counter.

\def\theequation{\thechapter.\arabic{equation}}

% \jot = 3pt      % Extra space added between lines of an eqnarray
                  % environment

% The macro \@eqnnum defines how equation numbers are to appear in
% equations.
%
% \def\@eqnnum{(\theequation)}
%


%    ****************************************
%    *           INITIALIZATION             *
%    ****************************************
%
% Default initializations

\ps@thesis                   % 'thesis' page style
\pagenumbering{arabic}      % Arabic page numbers
\if@twoside\else\raggedbottom\fi % Ragged bottom unless twoside
                                 % option.
\if@twocolumn
 \@@input twocolum.sty\relax
\else
 \onecolumn                 % Single-column.
\fi

\endinput
