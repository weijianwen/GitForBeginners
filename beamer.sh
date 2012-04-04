#!/bin/sh

TEXFILE="git_beamer_base.tex"
PDFFILE="git_beamer_base.pdf"

pandoc gittutorial.mkd --standalone -f markdown -t beamer -o $TEXFILE -V author='Jianwen WEI' -V fontsize=11pt -V theme=Boadilla -V title='Learning by Doing\\{}A Short Introduction to git' -V date='\today'

latexmk -pv -pdf $TEXFILE 


