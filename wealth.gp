reset

set locale

set terminal pdfcairo
set output 'wealth.pdf'

set log x
set log y
set autoscale
unset key

set title 'Familias mais ricas da Terra'
set xlabel 'Ranking'
set ylabel 'Fortuna(em dolares)'
set format x "10^{%T}"
set format y "10^{%T}"

plot 'wealth.dat.txt' pt 7 ps 0.5 lc 8

unset output
unset terminal
