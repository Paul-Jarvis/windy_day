#Gnuplot scrip to plot example of the phase shift between topography and shear stress

set terminal epslatex

set output 'phase_shift.tex'

set multiplot layout 3, 1 

set xrange[-3.142:3.142]

unset ytics

unset xtics

unset key

unset border

set ylabel 'Sediment flux ($q$)'

plot cos(x + 0.25)

unset ylabel
set y2label 'Shear stress ($\tau$)'

plot cos(x + 0.5)

unset y2label
set ylabel 'Topography ($z$)'

set xlabel 'Direction of flow $\to$'

set arrow from 0, -1 to 0, 8.0 nohead lw 2

set arrow from -0.5, -1 to -0.5, 8.0 nohead lt 0 lw 2

set arrow from -0.25, -1 to -0.25, 8.0 nohead lt 7 lw 2

set arrow from 0, 2 to -0.5, 2 lw 2

set arrow from -0.5, 6 to -0.25, 6 lw 2

plot cos(x)

unset multiplot
