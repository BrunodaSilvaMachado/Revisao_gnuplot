reset

set locale
set terminal pdfcairo
set autoscale
set datafile separator ","

set title 'Principais Religiões do mundo'
set xlabel 'Anos'
set ylabel 'População'

set output 'WRP_global_chr.pdf'
plot for [i=2:7] "WRP_global.csv" u 1:i w lp ps 0.4 t columnheader
set output 'WRP_global_jud.pdf'
plot for [i=8:12] "WRP_global.csv" u 1:i w lp ps 0.4 t columnheader
set output 'WRP_global_isl.pdf'
plot for [i=13:20] "WRP_global.csv" u 1:i w lp ps 0.4 t columnheader
set output 'WRP_global_bud.pdf'
plot for [i=21:24] "WRP_global.csv" u 1:i w lp ps 0.4 t columnheader
set output 'WRP_global_non.pdf'
plot "WRP_global.csv" u 1:35 w lp t columnheader

unset output
unset terminal