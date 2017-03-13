#include "tool.h"
#include <iostream>
#include <math.h>
#include <fstream>
#include <string>
#include <sstream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

const int bd=0;
const int nx=400+2*bd;
const int nz=160+2*bd;

int main(int  argc,char **argv)
{
    int i,j,k;
    float** vp0=alloc_float_2d(nx,nz);
    float** vs0=alloc_float_2d(nx,nz);
    float** rho=alloc_float_2d(nx,nz);
    float vp,vs;
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
    fp1=fopen("3layer","wb");
    fp2=fopen("1layer","wb");
    for(i=0;i<nx;i++)
    for(j=0;j<nz;j++)
	{
		vp0[i][j]=2500;
		vs0[i][j]=2500;
		rho[i][j]=1000;

		if(j==50){
		vp0[i][j]+=200;
		}
		if(j==90){
		vp0[i][j]+=200;
		}
		if(j==130){
		vp0[i][j]+=200;
		}
		if(j==100){
		vs0[i][j]+=200;
		}
	}
    for(i=0;i<nx;i++)
    {
        fwrite(vp0[i],sizeof(float),nz,fp1);
        fwrite(vs0[i],sizeof(float),nz,fp2);
    }
    free_2d(vp0,nx);
    free_2d(vs0,nx);

    fclose(fp1);
    fclose(fp2);
//  fclose(fp3);
//  fclose(fp4);
return 0;
}

