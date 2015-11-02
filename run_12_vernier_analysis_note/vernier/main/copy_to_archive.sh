#! /bin/bash

DATE=`date +%Y%b%d_%H%M%S`
ORIGIN_DIRECTORY="/direct/phenix+WWW/p/draft/beaumim/Vernier_Analysis/run_12_vernier_analysis_note/vernier/main"
DESTINATION_DIRECTORY="/direct/phenix+WWW/p/draft/beaumim/published_analysis_note_archive/run12_vernier_analysis"
ORIGIN_FILE="main.pdf"
DESTINATION_FILE="run_12_vernier_$DATE.pdf"
CURRENT_NAME="run_12_vernier_note_current.pdf"
cp -v $ORIGIN_DIRECTORY/$ORIGIN_FILE $DESTINATION_DIRECTORY/$DESTINATION_FILE
rm -vf $DESTINATION_DIRECTORY/$CURRENT_NAME
ln -s $DESTINATION_DIRECTORY/$DESTINATION_FILE $DESTINATION_DIRECTORY/$CURRENT_NAME

