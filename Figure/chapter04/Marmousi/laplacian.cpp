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
const int nx=500+2*bd;
const int nz=280+2*bd;

int main(int  argc,char **argv)
{
    int i,j,l,k;
    float** vp0=alloc_float_2d(nx,nz);
    float** vs0=alloc_float_2d(nx,nz);
    float** rho=alloc_float_2d(nx,nz);
    float vp,vs;
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
    fp1=fopen("model/decomp_vp_stage1_it_20.bin","rb");
//    fp1=fopen("model/decompPS_p_u_stage1_it10.old","rb");
//    fp1=fopen("jacobian/jacobian.decompPSsmooth10_p_u_stage1_it1.old","rb");
//    fp1=fopen("model/model_decompPSsmooth10_vp_stage1_it_40.bin","rb");
    for(i=0;i<nx;i++)
    {
        fread(vp0[i],sizeof(float),nz,fp1);
	}
    for(i=4;i<nx-4;i++)
    for(j=4;j<nz-4;j++)
	{
//		for(l=-1;l<2;l++)
//		vs0[i][j]=+vp0[i-1][j]-2*vp0[i][j]+vp0[i+1][j];
		vs0[i][j]=-vp0[i][j-1]+3*vp0[i][j]-vp0[i][j+1];

	}
    fp2=fopen("filtered","wb");
    for(i=0;i<nx;i++)
    {
        fwrite(vs0[i],sizeof(float),nz,fp2);
    }

    fclose(fp1);
    fclose(fp2);
//  fclose(fp3);
//  fclose(fp4);
return 0;
}

