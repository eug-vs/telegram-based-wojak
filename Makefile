SOURCES=$(wildcard src/*)
OUTPUTS=$(patsubst src/%.png, out/%.png, $(patsubst src/%.jpg, out/%.png, $(SOURCES)))

SIZE=512x512
FUZZ=50%

all: $(OUTPUTS)

open: all
	sxiv -t out

out/%.png: src/%.*
	@mkdir -p out
	convert $< -fuzz $(FUZZ) -fill none -floodfill +0+0 white -resize $(SIZE)\> $@

clean:
	rm -rf out
