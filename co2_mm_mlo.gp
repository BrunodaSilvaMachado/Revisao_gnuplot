reset

set locale

set terminal pdfcairo
set output 'co2_mm_mlo_1.pdf'

set autoscale
unset key

set title 'Emissão de CO_{2} (com outliers)'
set xlabel 'Tempo (anos)'
set ylabel 'Emissões (ppm)'

plot 'co2_mm_mlo.dat' u 3:4 pt 3 lc 10 w l

set output 'co2_mm_mlo_2.pdf'

set title 'Emissão de CO_{2} (sem outliers)'

plot 'co2_mm_mlo.dat' u 3:($4 > 0 ? $4:1/0) pt 3 lc 10 w l

set output 'co2_mm_mlo_3.pdf'

set title 'Emissão de CO_{2} (trend)'

plot 'co2_mm_mlo.dat' u 3:6 pt 3 lc 'black' s b
unset output
unset terminal