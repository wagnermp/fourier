
#include <stdio.h>
#include<stdlib.h>
#include <math.h>


int main(int argc, char *argv[])
{ 
    FILE *arq1;
    FILE *arq2;
    int i;
    double x, y, xmin, xmax, dx, dy, ymin, ymax, dados[1024];
    double vetor[1024];
    
    //Abrindo o arquivo
    
    arq1 = fopen("piano.txt", "r");
    
    //Lendo os dados do arquivo
    	for(i=0; i<1024; i++)
    {
		fscanf(arq1, "%lf\t", &dados[i]);
    }
    
   	 for(i=0; i<1024; i++)
    {
	  vetor[i] = dados[i];
    }
	
    	for(i=0; i<1024; i++)
    {
		printf("%f\t\n", vetor[i]);
    }

	
    arq2 = fopen(argv[1], "w");
	
    ymin = -1;
    ymax = 1;
    
    dy = (ymax - ymin)/1024;
    y=ymin;
    i=0;
    			do{
 		
 		
 			   fprintf(arq2, "%lf\t %lf\t \n", vetor[i],y);
			   i++;
 			   y+=dy;
 			   
     }while(i<1024&&y<ymax);
}