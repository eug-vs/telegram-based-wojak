SOURCES=$(wildcard src/*)
OUTPUTS=$(patsubst src/%.png, out/%.png, $(patsubst src/%.jpg, out/%.png, $(SOURCES)))

SIZE=512x512
FUZZ=50%

VIEW_COMMAND=sxiv -t


all: $(OUTPUTS)

view: all
	$(VIEW_COMMAND) out

viewsrc:
	$(VIEW_COMMAND) src

out/%.png: src/%.*
	@mkdir -p out
	magick $< \
		-fuzz $(FUZZ) -fill none \
		-floodfill +0+0 white \
		-floodfill "+%[fx:w-1]+0" white \
		-trim +repage \
		-resize $(SIZE) $@

clean:
	rm -rf out
