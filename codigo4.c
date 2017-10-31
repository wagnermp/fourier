

#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#define PI 3.141

double seno(double x)
{
	return sin(3*x)*sin(5*x);
}


int main(int argc, char *argv[])
{
	double xi, xf, dx, x;
	FILE *arq;

	arq=fopen(argv[1],"w");
	
	if(!arq)
	{
		printf("erro");
	}
	
	xi=-PI;
	xf=PI;
	dx=(xf-xi)/1024;
	
	for(x=xi; x<xf; x+=dx)
	{
	fprintf(arq, "%lf \t %lf \n ", x, seno(x));
	}
	
}
	