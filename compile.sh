#!/bin/bash

# name of the file
FILENAME="slides"

# compile.sh once
pdflatex -interaction=nonstopmode $FILENAME.tex

# delete log files
rm -f $FILENAME.aux $FILENAME.log $FILENAME.out $FILENAME.bbl $FILENAME.blg $FILENAME.bcf $FILENAME.run.xml $FILENAME.toc $FILENAME.snm $FILENAME.nav

# push changes to the repo
git add ./*
git commit -m "auto-commit"
git push
