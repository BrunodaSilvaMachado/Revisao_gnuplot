reset

set locale
set terminal pdfcairo
set output 'words-Mobydick.pdf'

set autoscale
unset key

set title 'Words Mobydick'
set xlabel 'Ordem'
set ylabel 'Frequencia'

set log x
set log y
set format x "10^{%T}"
set format y "10^{%T}"
#log-log
plot 'words-Mobydick.dat.txt' pt 7 ps 0.4 lc 8

unset output
unset terminal