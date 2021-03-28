# The Library Of Babel — Jorge Luis Borges

<http://libraryofbabel.info>'s about section links to [this print of James E. Irby's translation](https://maskofreason.files.wordpress.com/2011/02/the-library-of-babel-by-jorge-luis-borges.pdf) of Borges's story. I just took it and typeset it in LaTeX.

The only thing I changed in the text was the number in "each shelf contains thirty-five books of uniform format." This is a mistranslation; there are thirty-two in Borges's story. Any other inconsistency is unintentional and an error. If you spot one, please let me know via an issue.

The generated PDF is located at [`gen/The Library Of Genesis.pdf`](gen/The%20Library%20Of%20Babel.pdf). The source LaTeX file is at [`the-library-of-babel.tex`](the-library-of-babel.tex). The image is located in the [`img/`](img) folder.

The PDF can be generated with a simple `make` command. If you don't want to delete auxiliary files, use `make gen-no-clean` instead.
