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
int main(int  argc,char **argv)
{
    int i,j,k;
	int nx,nz;
	float t,sx,sy,gx,gy;
	char *vx,vy[256];
	nx=atoi(argv[1]);
	nz=atoi(argv[2]);
	k=atoi(argv[3]);
	vx=argv[4];
    float** vp0=alloc_float_2d(nx,nz);
    float** vs0=alloc_float_2d(nx,nz);
    float vp,vs,rho1;
    FILE *fp1,*fp2,*fp3,*fp4,*fp5,*fp6,*fp7,*fp8,*fp9;
	{
    fp1=fopen(vx,"rb");
    fp2=fopen("output","wb");
    for(i=0;i<nx;i++)
        fread(vp0[i],sizeof(float),nz,fp1);
	fwrite(vp0[k],sizeof(float),nz,fp2);
    fclose(fp1);
    fclose(fp2);
	}

return 0;
}

