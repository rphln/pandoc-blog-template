SOURCES := $(shell find -name '*.md' -not -exec git check-ignore --quiet {} \; -printf '%P ')
OBJECTS := $(SOURCES:%.md=%.html)

HEADERS := $(shell find '.pandoc')

all: $(OBJECTS)

$(OBJECTS): %.html: %.md $(HEADERS)
	pandoc --defaults .pandoc/defaults.yaml --output $@ $<

clean:
	$(RM) $(OBJECTS)

.PHONY: all clean
