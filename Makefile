HTML_FILES = R_Intro_UCSAS2019_slides.html

all: $(HTML_FILES)

clean: 
	rm -f $(HTML_FILES) 

%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<")'
