#!/bin/bash
pandoc --slide-level 2 -V theme=bjeldbak --template=custom.beamer --toc -t beamer gg.md -o gg.pdf
pdfnup gg.pdf --nup 2x3 --no-landscape --keepinfo --paper A4 --frame true --scale 0.9 --suffix "nup"