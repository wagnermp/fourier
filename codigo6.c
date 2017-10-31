
#include <stdio.h>
#include<stdlib.h>
#include <math.h>
#define PI 3.141

int main(int argc, char *argv[])
{ 
    FILE *arq;
    double x, y1, y2, xi, xf, dx, dy, ymin, ymax;
    
    
    arq = fopen(argv[1], "w");

    xi = -PI;
    xf = PI;
    dx = (xi-xf)/1024;
    
    ymin = -1;
    ymax = 1;
    
    dy = (ymax-ymin)/1024;

    x=xi;
    y1=ymin;
    
   		 do{
 			   y2=sin(5*x)*y1;
 			   fprintf(arq, "%lf\t %lf\t \n", x,y2);
 			   x+=dx;
 			   y1+=dy;
 			   
 	}while(x<xf&&y1<ymax);
	  
  
}