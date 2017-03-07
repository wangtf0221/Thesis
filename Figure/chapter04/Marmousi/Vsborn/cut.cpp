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
const int thickness=37;

int main(int  argc,char **argv)
{
        int i,j,k;
        float** vp0=alloc_float_2d(nx,nz);
        float** vs0=alloc_float_2d(nx,nz);
        float** gama=alloc_float_2d(nx,nz);
        float** c11=alloc_float_2d(nx,nz);
        float** c13=alloc_float_2d(nx,nz);
        float** c33=alloc_float_2d(nx,nz);
        float** c55=alloc_float_2d(nx,nz);
        zero_2d(vp0,nx,nz);
		zero_2d(vs0,nx,nz);
        float vp,vs,rho,true_vp,true_vs,f,delta_lambda,delta_mue;
        FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
        fp1=fopen("nx500nz243dxdz12.5.vp","wb");
        fp2=fopen("nx500nz243dxdz12.5.vs","wb");
        fp3=fopen("VsVp.vp","rb");
        fp4=fopen("VsVp.vs","rb");
        for(i=0;i<nx;i++)
        {
        fread(vp0[i],sizeof(float),nz,fp3);
        fread(vs0[i],sizeof(float),nz,fp4);
        }
        for(i=0;i<nx;i++)
        {
        fwrite(&vp0[i][37],sizeof(float),nz-thickness,fp1);
        fwrite(&vs0[i][37],sizeof(float),nz-thickness,fp2);
        }
        free_2d(vp0,nx);
        free_2d(vs0,nx);

        fclose(fp1);
        fclose(fp2);
//      fclose(fp3);
//      fclose(fp4);
return 0;
}

