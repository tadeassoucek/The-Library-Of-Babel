.PHONY: clean gen-no-clean gen
.DEFAULT_GOAL = gen

define rm
	rm $(1)
endef

define mv
	mv $(1) $(2)
endef

define clean
	$(call rm,*.aux)
	$(call rm,*.log)
endef

clean:
	$(call clean)

gen-no-clean:
	pdflatex the-library-of-babel.tex
	$(call mv,the-library-of-babel.pdf,"gen/The Library Of Babel.pdf")

gen: gen-no-clean clean
