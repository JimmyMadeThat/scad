.PHONY: all models images real-life-images clean clean-models clean-images

SCAD_FILES := $(shell find . -type f -name '*.scad')
REAL_LIFE_WEBP_FILES := $(shell find . -type f -name 'real-life*.webp')
REAL_LIFE_PNG_FILES := $(shell find . -type f -name 'real-life*.png')

# Output files
STL_FILES := $(SCAD_FILES:.scad=.stl)
PNG_PREVIEW_FILES := $(SCAD_FILES:.scad=.png)
WEBP_PREVIEW_FILES := $(SCAD_FILES:.scad=.webp)

all: models images real-life-images

models: $(STL_FILES)
images: $(PNG_PREVIEW_FILES) $(WEBP_PREVIEW_FILES)

%.stl: %.scad
	openscad -o $@ -D 'quality="production"' $<

%.png: %.scad
	openscad -o $@ $<
	exiftool -all= -overwrite_original $@

%.webp: %.png
	convert $< $@
	exiftool -all= -overwrite_original $@

clean: clean-models clean-images

clean-images:
	rm -rf $(PNG_PREVIEW_FILES) $(WEBP_PREVIEW_FILES)

clean-models:
	rm -rf $(STL_FILES)

real-life-images:
	exiftool -all= -overwrite_original $(REAL_LIFE_WEBP_FILES) $(REAL_LIFE_PNG_FILES)
