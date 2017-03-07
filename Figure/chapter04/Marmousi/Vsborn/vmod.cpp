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
        float** c11=alloc_float_2d(nx,nz-thickness);
        float** c13=alloc_float_2d(nx,nz-thickness);
        float** c33=alloc_float_2d(nx,nz);
        float** c55=alloc_float_2d(nx,nz);
        zero_2d(vp0,nx,nz);
		zero_2d(vs0,nx,nz);
        float vp,vs,rho,true_vp,true_vs,f,delta_lambda,delta_mue;
        FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
        fp1=fopen("nx500nz243dxdz12.5.smooth10.vp","rb");
        fp2=fopen("nx500nz243dxdz12.5.smooth10.vs","rb");
        fp3=fopen("VsVp.vp","rb");
        fp4=fopen("VsVp.vs","rb");
        fp5=fopen("VsVpsmooth.vp","wb");
        fp6=fopen("VsVpsmooth.vs","wb");
        for(i=0;i<nx;i++)
        {
        fread(c11[i],sizeof(float),nz-thickness,fp1);
        fread(c13[i],sizeof(float),nz-thickness,fp2);
        fread(vp0[i],sizeof(float),nz,fp3);
        fread(vs0[i],sizeof(float),nz,fp4);
        }
        for(i=0;i<nx;i++)
        {
        fwrite(&vp0[i][0],sizeof(float),thickness,fp5);
        fwrite(&c11[i][0],sizeof(float),nz-thickness,fp5);
        fwrite(&vs0[i][0],sizeof(float),thickness,fp6);
        fwrite(&c13[i][0],sizeof(float),nz-thickness,fp6);
        }
        free_2d(vp0,nx);
        free_2d(vs0,nx);

        fclose(fp1);
        fclose(fp2);
//      fclose(fp3);
//      fclose(fp4);
return 0;
}

