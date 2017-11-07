set terminal pdfcairo 

set output "Fourier.pdf"

set title "sen(3x)"
plot "pontos1.dat" lw 3 lt 6
reset

set title "coeficientes de sen(3x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos1coeficientes.dat" u ($1**2+$2**2) lw 6 pt 2 lt 6
set log y
reset
 

set title "sen(5x)"
plot "pontos2.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de sen(5x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos2coeficientes.dat" u ($1**2+$2**2) lw 6  pt 2 lt 6
set log y
reset

set title "sen(3x) + sen(5x)"
plot "pontos3.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de sen(3x) + sen(5x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos3coeficientes.dat" u ($1**2+$2**2) lw 6  pt 2 lt 6
set log y
reset

set title "sen(3x)*sen(5x)"
plot "pontos4.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de sen(3x)*sen(5x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos4coeficientes.dat" u ($1**2+$2**2) lw 6  pt 2 lt 6
set log y
reset

set title "aleatórios"
plot "pontos5.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes dos dados aleatórios"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos5coeficientes.dat" u ($1**2+$2**2) lw 6  pt 2 lt 6
set log y
reset


set title "sen(5x)*n(x)"
plot "pontos6.dat" lw 3 lt 6 pt 2
reset


set title "coeficientes de sen(5x)*n(x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos6coeficientes.dat" u ($1**2+$2**2) lw 6  pt 2 lt 6
set log y
reset


set title "dados sen(5x) + nx"
plot "pontos7.dat" lw 3 lt 6 pt 2
reset

set title "coeficientesde sen(5x) + n(x)"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos7coeficientes.dat" u ($1**2+$2**2) lw 6  pt 2 lt 6
set log y
reset

set title "piano.txt"
plot "pontos8.dat" lw 3 lt 6 pt 2
reset

set title "coeficientes de piano.txt"
set xrange[-0.2:0.2]
set yrange[-0.2:0.2]
plot "pontos8coeficientes.dat" u ($1**2+$2**2)  lw 6  pt 2 lt 6
set log y

set output 
