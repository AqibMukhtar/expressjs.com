
JADE = ./node_modules/.bin/jade

HTML = index.html \
	api.html \
	guide.html \
	applications.html \
	community.html \
	faq.html

build: ; $(MAKE) -j6 docs

docs: $(HTML)

%.html: %.jade
	$(JADE) --path $< < $< > $@

clean:
	rm -f *.html

.PHONY: docs clean
