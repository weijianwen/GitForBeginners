MAIN = git_beamer
VIEWER = open

.PHONY : all clean

all: $(MAIN).pdf

%.tex : %.mkd Makefile
	# pandoc gittutorial.mkd --standalone -f markdown -t beamer -o $TEXFILE -V author='Jianwen WEI' -V fontsize=11pt -V theme=Boadilla -V title='Learning by Doing\\{}A Short I    ntroduction to git' -V date='\today'

%.pdf : %.tex Makefile
	-@latexmk -silent -f -pdf $*
	
view : $(MAIN).pdf
	-@$(VIEWER) $< &
	
clean:
	-@latexmk -c &> /dev/null
	-@rm *.vrb *.snm *.nav *.fls &> /dev/null
