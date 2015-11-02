#!/bin/sh
#Make a list of all directories
cd ../

if [ -f dir_struct.txt ]; then
echo "Using defined directory structure in dir_struct.txt, make sure all direcories are added!!!!!"
cp dir_struct.txt temp
else
ls -d * | grep -v 'tex' | grep -v 'temp' | grep -v '.sh' | grep -v 'main' | grep -v 'intro' | grep -v 'CVS' > temp
fi

cd -
mv ../temp .

#Make the main.tex file
cat >  main.tex << +EOF

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                               %
% ${1} `date`
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\documentclass[12pt,twoside,notitlepage]{book}


\input{../main/front}

\begin{document}  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Begin Document

\frontmatter

\input{../intro/intro}
\clearpage

\mainmatter

+EOF

#include text files for all directories
while read line; do
cat >>  main.tex << +EOF
\input{../$line/$line}
\clearpage

+EOF
done < "temp"

#cat >>  main.tex << +EOF
#\appendix
#\input{../a0_main/17last}
#\cleardoublepage

cat >>  main.tex << +EOF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Lists and References
\backmatter
+EOF
#\input{ListsRefs}


#\bibliographystyle{plainurl}
#\bibliography{../main/main}

cat >>  main.tex << +EOF
\end{document}  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Document

+EOF

#Some clean-up
rm -rf temp
