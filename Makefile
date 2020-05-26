org2html:
	emacs --quick --script build.el

minify:
	for each file in build/**/*.html do \
		html-minifier \
			--collapse-whitespace \
			--remove-comments \
			--remove-optional-tags \
			--remove-redundant-attributes \
			--remove-script-type-attributes \
			--minify-css true \
			--minify-js true \
			build/**/*.html \
	done

all: org2html

clean:
	rm -rf build
