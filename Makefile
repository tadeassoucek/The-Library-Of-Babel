.PHONY: clean gen-no-clean gen
.DEFAULT_GOAL = gen

ifdef OS
PD = \$(UNDEFINED_VARIABLE_KLXHJKLHD)

define rm
	del $(1)
endef

define mv
	move $(1) $(2)
endef

else
PD = /

define rm
	rm $(1)
endef

define mv
	mv $(1) $(2)
endef
endif

define clean
	$(call rm,*.aux)
	$(call rm,*.log)
endef

clean:
	$(call clean)

gen-no-clean:
	pdflatex the-library-of-babel.tex
	$(call mv,the-library-of-babel.pdf,"gen$(PD)The Library Of Babel.pdf")

gen: gen-no-clean clean
