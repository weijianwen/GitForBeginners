MAIN 	:= gittutorial
DOCCLASS := hpcslides
LATEX_OPT := -gg -xelatex -f
PANDOC_OPTION := -f markdown -t beamer --template=hpcslides.latex -V theme=AnnArbor -V colortheme=rose -V institute='Omni-Lab, Shanghai Jiaotong University\\{}\url{http://omnilab.sjtu.edu.cn}' -V fontsize=11pt --toc --listings --smart --reference-links --standalone 

.PHONY : all clean git

all: $(MAIN).pdf
	
%.pdf : %.tex Makefile
	-@latexmk $(LATEX_OPT) $*

%.tex : %.mkd hpcslides.latex Makefile
	@pandoc $(PANDOC_OPTION) $*.mkd -o $@

clean:
	-@latexmk -f -c $(MAIN)
	-@rm -f *.nav *.snm *.vrb *.toc *.aux *.fls *.fdb_latexmk *.out

distclean : clean
	-@latexmk -f -C $(MAIN)

s3 : $(MAIN).pdf
	s3cmd put $< s3://gitforbeginners/

git : 
	git push gitlab
	git push github

