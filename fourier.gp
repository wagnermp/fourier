set terminal pdfcairo 

set output "fourier.pdf"

set title "dados de sin(3x)"
plot "pontos1.dat" lw 3 lt 6
reset

set title "coeficientes de sin(3x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos1coeficientes.dat" lw 6 pt 2 lt 6
reset
 

set title "dados de sin(5x)"
plot "pontos2.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de sen(5x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos2coeficientes.dat" lw 6  pt 2 lt 6
reset

set title "dados de sin(3x) + sin(5x)"
plot "pontos3.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de sin(3x) + sin(5x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos3coeficientes.dat" lw 6  pt 2 lt 6
reset

set title "dados de sin(3x)*sin(5x)"
plot "pontos4.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de sin(3x)*sin(5x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos4coeficientes.dat" lw 6  pt 2 lt 6
reset

set title "dados aleatorios"
plot "pontos5.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes dos dados aleatorios"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos5coeficientes.dat" lw 6  pt 2 lt 6
reset


set title "dados de sin(5x)*n(x)"
plot "pontos6.dat" lw 3 lt 6 pt 2
reset


set title "coeficientes de sin(5x)*n(x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos6coeficientes.dat" lw 6  pt 2 lt 6
reset


set title "dados sin(5x) + nx"
plot "pontos7.dat" lw 3 lt 6 pt 2
reset

set title "coeficientesde sin(5x) + n(x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos7coeficientes.dat" lw 6  pt 2 lt 6
reset

set title "dados de piano"
plot "pontos8.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de piano"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos8coeficientes.dat" lw 6  pt 2 lt 6

set output
