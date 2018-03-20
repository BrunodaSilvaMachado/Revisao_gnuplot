reset

set locale
set terminal pdfcairo
set output 'cancer.pdf'

set autoscale
unset key

set title 'Cancer'
set xlabel 'Faixa etária (idade)'
set ylabel 'Casos de cancer nas mulheres'

set log y
set format y "10^{%T}"

plot 'cancer.dat' pt 7 ps 0.5 lc 7

unset output
unset terminal