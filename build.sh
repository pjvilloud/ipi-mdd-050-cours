#!/bin/bash
mkdir -p screenshots
rm -rf screenshots/*.png
decktape  --screenshots --screenshots-directory screenshots --screenshots-size 1920x1080 impress file://`pwd`/index.html?showPopover=true mdd_050_cours.pdf
rm mdd_050_cours.pdf
cd screenshots
convert `ls -1v` ../mdd_050_cours.pdf
cd ..