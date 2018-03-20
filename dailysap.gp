reset

set locale
set terminal pdfcairo
set output 'dailysap.pdf'

set autoscale
unset key

set title "Ações da Stocks and Poor\'s"
set xlabel 'Meses'
set ylabel 'Ações'

set log y

plot 'dailysap.dat' u 0:1 pt 7 ps 0.4 lc 7 w l

unset output
unset terminal