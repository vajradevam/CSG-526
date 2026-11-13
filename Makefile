all: slides/slides.pdf notes/lecture.pdf

slides/slides.pdf: slides/slides.tex common/hkmacros.tex
	cd slides && pdflatex -interaction=nonstopmode slides.tex && pdflatex -interaction=nonstopmode slides.tex

notes/lecture.pdf: notes/lecture.tex common/hkmacros.tex
	cd notes && pdflatex -interaction=nonstopmode lecture.tex && pdflatex -interaction=nonstopmode lecture.tex

clean:
	rm -f slides/*.aux slides/*.log slides/*.nav slides/*.out slides/*.snm slides/*.toc notes/*.aux notes/*.log notes/*.out notes/*.toc
