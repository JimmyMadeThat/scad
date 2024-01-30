.PHONY: all
.DEFAULT: all

all: breathe-right-strip-box/breathe-right-strip-box.stl breathe-right-strip-box/breathe-right-strip-box.png

breathe-right-strip-box/breathe-right-strip-box.stl: breathe-right-strip-box/breathe-right-strip-box.scad
	openscad -o breathe-right-strip-box/breathe-right-strip-box.stl \
		-D 'quality="production"' \
		breathe-right-strip-box/breathe-right-strip-box.scad

breathe-right-strip-box/breathe-right-strip-box.png: breathe-right-strip-box/breathe-right-strip-box.scad
	openscad -o breathe-right-strip-box/breathe-right-strip-box.png \
		breathe-right-strip-box/breathe-right-strip-box.scad
