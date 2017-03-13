#include "tool.h"
#include <iostream>
#include <math.h>
#include <fstream>
#include <string>
#include <sstream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
#include <cjbsegy.h>
using namespace std;

const int bd=0;
const int nx=320+2*bd;
const int nz=160+2*bd;

int main(int  argc,char **argv)
{
    int i,j,k;
    float** f=alloc_float_2d(nx,nz);
    float** g=alloc_float_2d(nx,nz);
    float** result=alloc_float_2d(nx,nz-10);
    float** u2=alloc_float_2d(nx,nz);
    float vp,vs,rho1;
    float t,sx,sy,gx,gy;
    char vx[256],vy[256];
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
        sprintf(vx,argv[1]);
//      sprintf(vx,"model/newinit3.vs.backup");
//      sprintf(vx,"model/newinit3.vp");
    fp1=fopen(vx,"rb");
    for(i=0;i<nx;i++)
        fread(f[i],sizeof(float),nz,fp1);
    fclose(fp1);
    sprintf(vx,argv[2]);
    fp2=fopen(vx,"wb");
    for(i=0;i<nx;i++)
        fwrite(&f[i][10],sizeof(float),nz-10,fp2);
    fclose(fp2);

return 0;
}

