# Makefile for ubiquity-slideshow-xenta

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_xenta translations

build_init:
	mkdir -p $(BUILD)

build_xenta: build_init
	cp -rL $(SOURCESLIDES)/xenta $(BUILD)

translations:
	python generate-local-slides.py xenta

.PHONY : clean

clean:
	-rm -rf $(BUILD)
