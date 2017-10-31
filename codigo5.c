
#include <stdio.h>
#include<stdlib.h>
#include <math.h>
#define PI 3.141

int main(int argc, char *argv[])
{ 
    FILE *arq;
    double x, y, xi, xf, dx, dy, ymin, ymax;
    
    
    arq = fopen(argv[1], "w");

    xi = -PI;
    xf = PI;
    dx = (xi-xf)/1024;
    
    ymin = -1;
    ymax = 1;
    
    dy = (ymax-ymin)/1024;

    x=xi;
    y=ymin;
    
   		 do{
 		
 			   fprintf(arq, "%lf\t %lf\t \n", x,y);
 			   x+=dx;
 			   y+=dy;
 			   
 	}while(x<xf&&y<ymax);
	  
  
}