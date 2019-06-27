.SUFFIXES: .slim .html

SLIM=$(shell ls *.slim)
HTML=$(SLIM:.slim=.html)

all: $(HTML)

%.html: %.slim
	slimrb $< -p > $@

clean:
	rm -f $(HTML)
