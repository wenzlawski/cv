all: de en

de:
    just pdf cv_de.yml

en:
    just pdf cv_en.yml

pdf file='cv_en.yml': 
     pandoc --quiet --template resume.pandoc.tex --pdf-engine=lualatex -o {{file}}.pdf --metadata-file={{file}} t.md