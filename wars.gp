reset

set locale
set terminal pdfcairo
set output 'wars.pdf'

set autoscale
unset key

set title 'Mortos em guerras'
set xlabel 'Ordem'
set ylabel 'Frequencia'

set log y
set format y "10^{%T}"
#lin-log
plot 'wars.dat.txt' pt 7 ps 0.4 lc 8

unset output
unset terminal