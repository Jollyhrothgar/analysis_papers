#!/bin/sh 

while read line; do
cat >>  main.tex << +EOF
../../rep/gen_main_tex.sh $line
+EOF
done < "myname"

root="main"

touch $root

type -P rubber &>/dev/null

if [ $? = 0 ]; then 
 rubber -dv $root
else
 pdflatex $root
 bibtex $root
 pdflatex $root
 bibtex $root
 pdflatex $root
fi

rm -f *.aux *.log *.blg *.bbl *.toc *.lot *.lof *.out *.brf

