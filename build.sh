emacs --quick --script build.el

for file in build/**/*.html
do
    html-minifier \
        --case-sensitive \
        --collapse-boolean-attributes \
        --collapse-whitespace \
        --minify-css true \
        --minify-js true \
        --minify-urls true \
        --remove-attribute-quotes \
        --remove-comments \
        --remove-empty-attributes \
        --remove-optional-tags \
        --remove-redundant-attributes \
        --remove-script-type-attributes \
        --remove-style-link-type-attributes \
        --sort-attributes \
        --sort-class-name \
        --trim-custom-fragments \
        --use-short-doctype \
        -o $file $file
done
