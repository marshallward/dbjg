INPUT = ageru_1.txt
OUTPUT = $(INPUT:.txt=.html)
CSS=dbjg.css

FLAGS = --stylesheet $(CSS) \
		--link-stylesheet \
		--field-name-limit 0

all: $(OUTPUT)

$(OUTPUT): $(INPUT) $(CSS)
	rst2html $(FLAGS) $< $@

clean:
	rm -f $(OUTPUT)

.PHONY: all
