MAIN 	:= gittutorial
VIEWER 	:= open
REPOURL := https://raw.github.com/weijianwen/hpc-slides-class/master/pandoc
DOCCLASS := hpcslides
LATEX_OPT := -gg -xelatex -f
PANDOC_DIR := pandoc
PANDOC_SLIDES := -f markdown -t beamer --template=$(DOCCLASS).latex -V theme=AnnArbor -V colortheme=rose -V institute='Omni-Lab, Shanghai Jiaotong University\\{}\url{http://omnilab.sjtu.edu.cn}' -V fontsize=11pt --toc --listings --smart --reference-links --standalone 

.PHONY : all clean
.PRECIOUS : %.tex

all: $(MAIN).pdf
	
%.pdf : %.tex $(DOCCLASS).cls $(DOCCLASS).cfg Makefile
	-@latexmk $(LATEX_OPT) $*

view : $(MAIN).pdf
	-@$(VIEWER) $< &
	
$(DOCCLASS).% :
	cp -P pandoc/$@ ./

%.tex : $(DOCCLASS).latex %.mkd Makefile
	@pandoc $(PANDOC_SLIDES) $*.mkd -o $@

clean:
	-@latexmk -f -c $(MAIN)
	-@rm -f *.nav *.snm *.vrb *.toc *.aux *.fls *.fdb_latexmk *.out *.cfg *.cls *.latex

distclean : clean
	-@rm $(MAIN).pdf
	-@latexmk -f -C $(MAIN)

update :
	@wget -q $(REPOURL)/$(DOCCLASS).cls -O pandoc/$(DOCCLASS).cls
	@wget -q $(REPOURL)/$(DOCCLASS).cfg -O pandoc/$(DOCCLASS).cfg
	@wget -q $(REPOURL)/$(DOCCLASS).latex -O pandoc/$(DOCCLASS).latex	

release : 
	git push gitlab
	git push github
