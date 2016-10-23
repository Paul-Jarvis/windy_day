#!/bin/bash 

gnuplot phase_shift.p

pdflatex -shell-escape windy_day.tex
