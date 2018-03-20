reset

set locale
set terminal pdfcairo
set output 'terrorism.pdf'

set autoscale
unset key

set title 'Terrorismo'
set xlabel 'Ranking'
set ylabel 'Ataques'

set log x
set log y
set format x "10^{%T}"
set format y "10^{%T}"
plot 'terrorism.dat' u (9101 - $0):($1) pt 7 ps 0.5 lc 8

unset output
unset terminal