%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

How-To : make a new note

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
This tool has been updated by Mike Beaumier. I
have no idea who originall wrote it, but I now
maintain this version, and I'm working to improve
its documentation. For starters, to use pdflatex
(the flavor of LaTeX used at PHENIX) you must log
into rcf2. This is done at the ssh gateway after
you first log in to RCF, not after you go to an
RCAS node.

Example: (from home)

#################################################
:~> ssh beaumim@rssh.rhic.bnl.gov
:~> ssh rcf2
#################################################
You are now on rcf2. Navigate anywhere (maybe
somwhere sensible like /phenix/p/drafts).

Check this module out from CVS, into a directory
where you would like to write your analysis note.
In general, this tool copies template files from
the template_files directory, and puts them in
"note_name" diretory. After this point, you're on
your own, you can edit the files (.tex) manually.
This script serves simply to create a ready-made
note, which already compiles correctly. Be sure
to save/back up often, if you break your note, so
you can revert.

Only modify the scripts if you really, really
know what you're doing (or can sorta figure it
out).

in the notes directory execute:

./make_new_note.sh note_name

This sets up all the structure

You can already build this by

cd note_name/main
./makefile

Any directories added (using add_new_chapter.sh,
see below) are automagically added into the 
compilation

-------------------------------------------------
-------------------------------------------------


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

How-To : change the title/authors on the cover

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

edit titlepage.tex

change the title/authors from there (don't modify
the script)

-------------------------------------------------
-------------------------------------------------


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

How-To : make a new directory (chapter)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


in the main directory of the note you wish to
work on type:

./add_new_chapter.sh chapter_name


If you have already created this, it won't let you
overwrite it.  You can now edit the file:

chapter_name/chapter_name.tex

All text has to be included in this file, or a
file which is \input{} into it.

When you remake (from note_name/main), this
directory is included in the compilation

-------------------------------------------------
-------------------------------------------------


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

How-To : make a chapters appear in the right order

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

To make directories come out in a specific or
make a file called

note_name/main/dir_struct.txt

with for example:
ch1
ch2
ch3

etc

intro/intro.tex is always first (hardcoded) adding
intro to the list will duplicate the information.

Then recompile in note_name/main

(at time of writing this was not extensively tested)

-------------------------------------------------
-------------------------------------------------


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

How-To : change the picture on the cover

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

edit titlepage.tex

change the filename from

../../rep/drawdummyprocess

to your favourite picture!

-------------------------------------------------
-------------------------------------------------


