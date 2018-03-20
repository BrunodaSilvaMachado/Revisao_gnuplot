reset

set locale

set terminal pdfcairo
set output 'viral_lin_log.pdf'

set log y
set format y "10^%T"
set autoscale
unset key

set title 'Carga viral'
set xlabel 'Semanas'
set ylabel 'Concentração (molecules/mL)'

plot 'viral.dat' pt 7 lc 5

set output 'viral_log_log.pdf'

set log x
set format x "10^%T"

plot 'viral.dat' pt 7 lc 5

unset output
unset terminal