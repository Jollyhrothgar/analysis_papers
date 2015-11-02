cd ../

if [ -d ${1} ]; then
  echo "This already exists, I'm thoroughly confused"
  exit;
fi

echo "Creating directory: " ${1}
mkdir ${1}

cd ${1}
mkdir figs

cat >  ${1}.tex << +EOF

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                               %
% Chapter: ${1} `date`
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\chapter{${1}}
\label{ch:${1}}
This is the chapter on ${1}
+EOF

cd ../main

while read line; do
../../template_files/gen_main_tex.sh $line
done < "myname"
