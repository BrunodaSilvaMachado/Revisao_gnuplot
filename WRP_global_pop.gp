reset

set locale
#set terminal pdfcairo
set autoscale
#set datafile separator ","

set title 'Principais Religiões do mundo'
set xlabel 'População Mundial'
set ylabel 'População Religiosa'

set output 'WRP_global_chr_pop.pdf'
plot for [i=2:7] "WRP_global.csv" u 39:i w lp ps 0.4 t columnheader
set output 'WRP_global_jud_pop.pdf'
plot for [i=8:12] "WRP_global.csv" u 39:i w lp ps 0.4 t columnheader
set output 'WRP_global_isl_pop.pdf'
plot for [i=13:21] "WRP_global.csv" u 39:i w lp ps 0.4 t columnheader
set output 'WRP_global_bud_pop.pdf'
plot for [i=22:26] "WRP_global.csv" u 39:i w lp ps 0.4 t columnheader
set output 'WRP_global_non_pop.pdf'
plot "WRP_global.csv" u 39:35 w lp t columnheader

#unset output
#unset terminal