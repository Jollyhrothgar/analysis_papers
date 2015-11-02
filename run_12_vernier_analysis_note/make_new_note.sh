MAINDIR=`pwd`

#make a new note directory
mkdir ${1}
cd ${1}

mkdir intro
mkdir main

##########################################
#go into the main directory, let's set up some files
##########################################
cd main
mkdir figs
#the makefile is the file used to define how latex compiles
cp $MAINDIR/template_files/makefile .
chmod u+x makefile
cp $MAINDIR/template_files/add_new_chapter.sh .
chmod u+x add_new_chapter.sh
cat > myname << +EOF
${1}
+EOF

cp $MAINDIR/template_files/front.tex .
cp $MAINDIR/template_files/moresize.sty .
cp $MAINDIR/template_files/clean.sh .
chmod u+x clean.sh

#gen_main_tex.sh generates the main.tex file
# this includes all the working directories automagically
# we need to run this each time a new directory is added
# (or add directories using the script)
$MAINDIR/template_files/gen_main_tex.sh ${1}

##########################################
#generate the starting intro chapter (as an example ...)
##########################################
cd ../intro/
mkdir figs
#make intro.tex, this is included in the global makefile
cat >  intro.tex << +EOF
\pagestyle{empty}
\input{../intro/titlepage}

\clearpage

\pagestyle{fancy}

%==============================================  Excecutive Summary
\chapter*{Introduction and Executive Summary}
\label{exec_summ}
\setcounter{page}{1}
\input{../intro/summary}

\clearpage

\resetlinenumber

\clearpage

\resetlinenumber

\tableofcontents

\clearpage

\resetlinenumber
+EOF

#make a dummy title page
#YOU EDIT THIS YOURSELF, I'M NO MIND-READER
cat >  titlepage.tex << +EOF 
\renewcommand*\familydefault{\sfdefault}
{\sffamily
\vspace{2cm}
%\centerline{\HUGE The PHENIX Experiment at RHIC}

\vspace{1.5cm}

\emph{The forward W analysis project:} Run 11 analysis of 500 GeV pp collisions

\vspace{0.5cm}
\centerline{\huge \emph{YOUR TITLE GOES HERE}}

\vfill

\centerline{\Large Brookhaven National Laboratory}

\vspace{0.5cm}

\centerline{\Large `date '+%d %B %Y'`}

\vfill
}

\begin{figure}[H]
  \begin{center}
  \includegraphics[angle=90, width=0.8\linewidth]{../../template_files/drawdummyprocess}
  \end{center}
\end{figure}

\vfill

\hspace*{0.2in}\emph {Institution 1} \\ 
               \hspace{0.25in} {\bf Your Name}, {\bf Someone else's name}

\hspace*{0.2in}\emph {Institution 2} \\ 
               \hspace{0.25in} {\bf Another Name} \\

\hspace*{0.2in}\emph {Institution 3} \\ 
               \hspace{0.25in} {\bf Another Name} \\

\hspace*{0.2in}\emph {Institution 4} \\ 
               \hspace{0.25in} {\bf Another Name} \\

\hspace*{0.2in}\emph {Institution 5} \\ 
               \hspace{0.25in} {\bf Another Name} \\

\renewcommand*\familydefault{\rmdefault}

+EOF

#make a dummy summary page
#YOU EDIT THIS YOURSELF, I'M NO MIND-READER
cat > summary.tex << +EOF
Write something here (not in the script, in the intro/summary.tex file...).
+EOF
