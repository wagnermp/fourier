

//Cálculo dos coeficientes a_k e b_k da série de Fourier e de a_k**2 + b_k**2*/


#include <stdio.h>
#include <stdlib.h>
#include <math.h>



void coef(double *x, double *y, int m, char *nome)
{  
   FILE* arquivo;
   double *a, *b, *ab, sc=0, ss=0; //sc é a soma cosseno e ss é a soma seno
   int k, j, d;
  
  
  a = malloc(m*sizeof(double));
  b = malloc(m*sizeof(double));
  ab = malloc(m*sizeof(double));
  
  d=m/2.0;
  arquivo = fopen(nome, "w");
  
  for(k=0;k<d;k++)
  {	
      
      sc = ss =0  ;
  		
  	  for(j=0;j<d-1;j++)
      {  
            
           	sc = sc + y[j] * cos(k * x[j]);
    		ss = ss + y[j] * sin(k * x[j]);
    		
      } 
       printf("Soma seno : %lf\n", ss);
       printf("Soma cosseno : %lf\n", sc);
       
       a[k] = (1.0/m)*sc;
       b[k] = (1.0/m)*ss;
       ab[k] = a[k] * a[k] + b[k] * b[k];
       
       //printf("%lf\n", a[k]);
       
       fprintf(arquivo, "%lf\t %lf \t %lf\t  \n", a[k], b[k], ab[k]);
       
  }
    
  
}

int main(int argc, char **argv)
{ 
    FILE *leitura;
    int i, m;
    double *x, *y;
    i=0;
  
 
    
//Leitura de arquivo
  
    leitura = fopen(argv[1], "r");
    
    printf("Funcionou\n");
    
    x = malloc(2000*sizeof(double));
    y = malloc(2000*sizeof(double)); 
    
    while( fscanf(leitura, "%lf %lf", &x[i], &y[i]) !=EOF) i++;    
    
    m=i;
    
    printf("%d\n", m);
    x=realloc(x, m*sizeof(*x));
    y=realloc(y, m*sizeof(*y));
    
    coef(x,y,m,argv[2]);
        
}    
       
       

