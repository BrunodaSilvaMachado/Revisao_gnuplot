reset

set locale
set terminal pdfcairo
set output 'att.pdf'

set autoscale
unset key

set title 'Ações da AT\&T'
set xlabel 'Meses'
set ylabel 'Ações'
set log x
set log y

plot 'att.dat' u 0:1 pt 7 ps 0.4 lc 7 w l

unset output
unset terminal