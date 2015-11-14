#!/bin/sh 

while read line; do
cat >>  main.tex << +EOF
../../template_files/gen_main_tex.sh $line
+EOF
done < "myname"

root="main"

touch $root

type -P rubber &>/dev/null

if [ $? = 0 ]; then 
 rubber -dv $root
else
 pdflatex $root # get the paper
 bibtex $root
 pdflatex $root # get the table of contents
 bibtex $root
 pdflatex $root # get the biliography
fi

rm -f *.aux *.log *.blg *.bbl *.toc *.lot *.lof *.out *.brf

