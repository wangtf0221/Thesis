#include <fstream>
#include <iostream>
#include <math.h>

using namespace std;

int* alloc_int_1d(int nx);
float* alloc_float_1d(int nx);
double* alloc_double_1d(int nx);
char* alloc_char_1d(int nx);

int** alloc_int_2d(int nx , int nt);
float** alloc_float_2d(int nx , int nt);
double** alloc_double_2d(int nx , int nt);
char** alloc_char_2d(int nx , int nt);

int*** alloc_int_3d(int nx,int nz,int nt);
float*** alloc_float_3d(int nx,int nz,int nt);
double*** alloc_double_3d(int nx,int nz,int nt);
char*** alloc_char_3d(int nx,int nz,int nt);

float**** alloc_float_4d(int nx,int ny,int nz,int nt);

void zero_1d(int* a,int n1);
void zero_2d(int** a,int n1,int n2);
void zero_3d(int*** a,int n1,int n2,int n3);
void zero_1d(float* a,int n1);
void zero_2d(float** a,int n1,int n2);
void zero_3d(float*** a,int n1,int n2,int n3);
void zero_4d(float**** a,int n1,int n2,int n3,int n4);
void zero_1d(double* a,int n1);
void zero_2d(double** a,int n1,int n2);
void zero_3d(double*** a,int n1,int n2,int n3);

void free_1d(int* a);
void free_1d(float* a);
void free_1d(double* a);
void free_1d(char* a);

void free_2d(int** a,int n1);
void free_2d(float** a,int n1);
void free_2d(double** a,int n1);
void free_2d(char** a,int n1);

void free_3d(int*** a,int n1,int n2);
void free_3d(float*** a,int n1,int n2);
void free_3d(double*** a,int n1,int n2);
void free_3d(char*** a,int n1,int n2);

void free_4d(float**** a,int n1,int n2,int n3);

void copy_1d(int* a,int* b,int n1);
void copy_1d(float* a,float* b,int n1);
void copy_1d(double* a,double* b,int n1);
void copy_1d(char* a,char* b,int n1);

void copy_2d(int** a,int** b,int n1,int n2);
void copy_2d(float** a,float** b,int n1,int n2);
void copy_2d(double** a,double** b,int n1,int n2);
void copy_2d(char** a,char** b,int n1,int n2);

void copy_3d(int*** a,int*** b,int n1,int n2,int n3);
void copy_3d(float*** a,float*** b,int n1,int n2,int n3);
void copy_3d(double*** a,double*** b,int n1,int n2,int n3);
void copy_3d(char*** a,char*** b,int n1,int n2,int n3);

void read_int_1d(char* file,int* a,int n1);
void read_float_1d(char* file,float* a,int n1);
void read_double_1d(char* file,double* a,int n1);
void read_char_1d(char* file,char* a,int n1);

void read_int_2d(char* file,int** a,int n1,int n2);
void read_float_2d(char* file,float** a,int n1,int n2);
void read_double_2d(char* file,double** a,int n1,int n2);
void read_char_2d(char* file,char** a,int n1,int n2);

void read_int_3d(char* file,int*** a,int n1,int n2,int n3);
void read_float_3d(char* file,float*** a,int n1,int n2,int n3);
void read_double_3d(char* file,double*** a,int n1,int n2,int n3);
void read_char_3d(char* file,char*** a,int n1,int n2,int n3);

void write_int_1d(char* file,int* a,int n1);
void write_float_1d(char* file,float* a,int n1);
void write_double_1d(char* file,double* a,int n1);
void write_char_1d(char* file,char* a,int n1);

void write_int_2d(char* file,int** a,int n1,int n2);
void write_float_2d(char* file,float** a,int n1,int n2);
void write_double_2d(char* file,double** a,int n1,int n2);
void write_char_2d(char* file,char** a,int n1,int n2);

void write_int_3d(char* file,int*** a,int n1,int n2,int n3);
void write_float_3d(char* file,float*** a,int n1,int n2,int n3);
void write_double_3d(char* file,double*** a,int n1,int n2,int n3);
void write_char_3d(char* file,char*** a,int n1,int n2,int n3);

void read_int_1d(string file,int* a,int n1);
void read_float_1d(string file,float* a,int n1);
void read_double_1d(string file,double* a,int n1);
void read_char_1d(string file,char* a,int n1);

void read_int_2d(string file,int** a,int n1,int n2);
void read_float_2d(string file,float** a,int n1,int n2);
void read_double_2d(string file,double** a,int n1,int n2);
void read_char_2d(string file,char** a,int n1,int n2);

void read_int_3d(string file,int*** a,int n1,int n2,int n3);
void read_float_3d(string file,float*** a,int n1,int n2,int n3);
void read_double_3d(string file,double*** a,int n1,int n2,int n3);
void read_char_3d(string file,char*** a,int n1,int n2,int n3);

void write_int_1d(string file,int* a,int n1);
void write_float_1d(string file,float* a,int n1);
void write_double_1d(string file,double* a,int n1);
void write_char_1d(string file,char* a,int n1);

void write_int_2d(string file,int** a,int n1,int n2);
void write_float_2d(string file,float** a,int n1,int n2);
void write_double_2d(string file,double** a,int n1,int n2);
void write_char_2d(string file,char** a,int n1,int n2);

void write_int_3d(string file,int*** a,int n1,int n2,int n3);
void write_float_3d(string file,float*** a,int n1,int n2,int n3);
void write_double_3d(string file,double*** a,int n1,int n2,int n3);
void write_char_3d(string file,char*** a,int n1,int n2,int n3);
/*********************************************************************************************************************/
void zero_1d(int* a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		a[i]=0;
}
void zero_1d(float* a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		a[i]=0.0;
}
void zero_1d(double* a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		a[i]=0.0;
}
void zero_2d(int** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			a[i][j]=0;
}
void zero_2d(float** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			a[i][j]=0.0;
}
void zero_2d(double** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			a[i][j]=0.0;
}
void zero_3d(int*** a,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				a[i][j][k]=0;
}
void zero_3d(float*** a,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				a[i][j][k]=0.0;
}
void zero_4d(float**** a,int n1,int n2,int n3,int n4)
{
	int i,j,k,l;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
			for(l=0;l<n4;l++)
				a[i][j][k][l]=0.0;
}
void zero_3d(double*** a,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				a[i][j][k]=0.0;
}
void write_int_1d(char* file,int* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(int));
	ofile.close();
}
void write_float_1d(char* file,float* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(float));
	ofile.close();
}
void write_double_1d(char* file,double* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(double));
	ofile.close();
}
void write_char_1d(char* file,char* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(char));
	ofile.close();
}

void write_int_2d(char* file,int** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(int));
	ofile.close();
}
void write_float_2d(char* file,float** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(float));
	ofile.close();
}
void write_double_2d(char* file,double** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(double));
	ofile.close();
}
void write_char_2d(char* file,char** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(double));
	ofile.close();
}

void write_int_3d(char* file,int*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(int));
	ofile.close();
}
void write_float_3d(char* file,float*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(float));
	ofile.close();
}
void write_double_3d(char* file,double*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(double));
	ofile.close();
}
void write_char_3d(char* file,char*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(char));
	ofile.close();
}

void read_int_3d(char* file,int*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(int));
	infile.close();
}

	

void read_float_3d(char* file,float*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(float));
	infile.close();
}
void read_double_3d(char* file,double*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(double));
	infile.close();
}
void read_char_3d(char* file,char*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(char));
	infile.close();
}

void read_int_2d(char* file,int** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(int));
	infile.close();
}
void read_float_2d(char* file,float** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(float));
	infile.close();
}
void read_double_2d(char* file,double** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(double));
	infile.close();
}
void read_char_2d(char* file,char** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(char));
	infile.close();
}

void read_int_1d(char* file,int* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(int));
	infile.close();
}
void read_float_1d(char* file,float* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(float));
	infile.close();
}
void read_double_1d(char* file,double* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(double));
	infile.close();
}
void read_char_1d(char* file,char* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file,ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(char));
	infile.close();
}
void write_int_1d(string file,int* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(int));
	ofile.close();
}
void write_float_1d(string file,float* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(float));
	ofile.close();
}
void write_double_1d(string file,double* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(double));
	ofile.close();
}
void write_char_1d(string file,char* a,int n1)
{
	int i;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		ofile.write((char*)&a[i],sizeof(char));
	ofile.close();
}

void write_int_2d(string file,int** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(int));
	ofile.close();
}
void write_float_2d(string file,float** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(float));
	ofile.close();
}
void write_double_2d(string file,double** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(double));
	ofile.close();
}
void write_char_2d(string file,char** a,int n1,int n2)
{
	int i,j;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			ofile.write((char*)&a[i][j],sizeof(double));
	ofile.close();
}

void write_int_3d(string file,int*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(int));
	ofile.close();
}
void write_float_3d(string file,float*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(float));
	ofile.close();
}
void write_double_3d(string file,double*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(double));
	ofile.close();
}
void write_char_3d(string file,char*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ofstream ofile;
	ofile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				ofile.write((char*)&a[i][j][k],sizeof(char));
	ofile.close();
}

void read_int_3d(string file,int*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(int));
	infile.close();
}

	

void read_float_3d(string file,float*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(float));
	infile.close();
}
void read_double_3d(string file,double*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(double));
	infile.close();
}
void read_char_3d(string file,char*** a,int n1,int n2,int n3)
{
	int i,j,k;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				infile.read((char*)&a[i][j][k],sizeof(char));
	infile.close();
}

void read_int_2d(string file,int** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(int));
	infile.close();
}
void read_float_2d(string file,float** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(float));
	infile.close();
}
void read_double_2d(string file,double** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(double));
	infile.close();
}
void read_char_2d(string file,char** a,int n1,int n2)
{
	int i,j;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			infile.read((char*)&a[i][j],sizeof(char));
	infile.close();
}

void read_int_1d(string file,int* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(int));
	infile.close();
}
void read_float_1d(string file,float* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(float));
	infile.close();
}
void read_double_1d(string file,double* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(double));
	infile.close();
}
void read_char_1d(string file,char* a,int n1)
{
	int i;
	ifstream infile;
	infile.open(file.c_str(),ios::binary);
	for(i=0;i<n1;i++)
		infile.read((char*)&a[i],sizeof(char));
	infile.close();
}

void copy_1d(int* a,int* b,int n1)
{	
	int i;
	for(i=0;i<n1;i++)
		b[i]=a[i];
}

void copy_1d(float* a,float* b,int n1)
{	
	int i;
	for(i=0;i<n1;i++)
		b[i]=a[i];
}
void copy_1d(double* a,double* b,int n1)
{	
	int i;
	for(i=0;i<n1;i++)
		b[i]=a[i];
}
void copy_1d(char* a,char* b,int n1)
{	
	int i;
	for(i=0;i<n1;i++)
		b[i]=a[i];
}

void copy_2d(int** a,int** b,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			b[i][j]=a[i][j];
}
void copy_2d(float** a,float** b,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			b[i][j]=a[i][j];
}
void copy_2d(double** a,double** b,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			b[i][j]=a[i][j];
}
void copy_2d(char** a,char** b,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			b[i][j]=a[i][j];
}

void copy_3d(int*** a,int*** b,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				b[i][j][k]=a[i][j][k];
}
void copy_3d(float*** a,float*** b,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				b[i][j][k]=a[i][j][k];
}
void copy_3d(double*** a,double*** b,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				b[i][j][k]=a[i][j][k];
}
void copy_3d(char*** a,char*** b,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
				b[i][j][k]=a[i][j][k];
}

void free_1d(int* a)
{
	delete []a;
}
void free_1d(float* a)
{
	delete []a;
}
void free_1d(double* a)
{
	delete []a;
}
void free_1d(char* a)
{
	delete []a;
}

void free_2d(int** a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		delete []a[i];
	
	delete []a;
}
void free_2d(float** a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}
void free_2d(double** a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}
void free_2d(char** a,int n1)
{
	int i;
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}

void free_3d(int*** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			delete []a[i][j];		
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}
void free_3d(float*** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			delete []a[i][j];		
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}
void free_3d(double*** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			delete []a[i][j];		
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}
void free_3d(char*** a,int n1,int n2)
{
	int i,j;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			delete []a[i][j];		
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}
void free_4d(float**** a,int n1,int n2,int n3)
{
	int i,j,k;
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			for(k=0;k<n3;k++)
			delete []a[i][j][k];		
	for(i=0;i<n1;i++)
		for(j=0;j<n2;j++)
			delete []a[i][j];		
	for(i=0;i<n1;i++)
		delete []a[i];
	delete []a;
}


int* alloc_int_1d(int nx)
{
	int* a=new int[nx];
	return a;
}

float* alloc_float_1d(int nx)
{
	float* a=new float[nx];
	return a;
}

double* alloc_double_1d(int nx)
{
	double* a=new double[nx];
	return a;
}

char* alloc_char_1d(int nx)
{
	char* a=new char[nx];
	return a;
}

int** alloc_int_2d(int nx , int nt)
{
	int i,j;

	int** a=new int*[nx];

	for(i=0;i<nx;i++)
		a[i]=new int[nt];

	return a;
}
float** alloc_float_2d(int nx , int nt)
{
	int i,j;

	float** a=new float*[nx];

	for(i=0;i<nx;i++)
		a[i]=new float[nt];
	if(!a)
		cout<<"alloc failed!"<<endl;

	return a;
}

double** alloc_double_2d(int nx , int nt)
{
	int i,j;

	double** a=new double*[nx];

	for(i=0;i<nx;i++)
		a[i]=new double[nt];

	return a;
}
char** alloc_char_2d(int nx , int nt)
{
	int i,j;

	char** a=new char*[nx];

	for(i=0;i<nx;i++)
		a[i]=new char[nt];

	return a;
}

int*** alloc_int_3d(int nt,int nx,int nz)
{
	int i,j,k;
	int*** a=new int**[nt];
	for(i=0;i<nt;i++)
		a[i]=new int*[nx];
	for(i=0;i<nt;i++)
		for(j=0;j<nx;j++)
			a[i][j]=new int[nz];
	return a;
}
float*** alloc_float_3d(int nt,int nx,int nz)
{
	int i,j,k;
	float*** a=new float**[nt];
	for(i=0;i<nt;i++)
		a[i]=new float*[nx];
	for(i=0;i<nt;i++)
		for(j=0;j<nx;j++)
			a[i][j]=new float[nz];
	return a;
}
double*** alloc_double_3d(int nt,int nx,int nz)
{
	int i,j,k;
	double*** a=new double**[nt];
	for(i=0;i<nt;i++)
		a[i]=new double*[nx];
	for(i=0;i<nt;i++)
		for(j=0;j<nx;j++)
			a[i][j]=new double[nz];
	return a;
}
char*** alloc_char_3d(int nt,int nx,int nz)
{
	int i,j,k;
	char*** a=new char**[nt];
	for(i=0;i<nt;i++)
		a[i]=new char*[nx];
	for(i=0;i<nt;i++)
		for(j=0;j<nx;j++)
			a[i][j]=new char[nz];
	return a;
}
float**** alloc_float_4d(int nt,int nx,int ny,int nz)
{
	int i,j,k;
	float**** a=new float***[nt];
	for(i=0;i<nt;i++)
		a[i]=new float**[nx];
	for(i=0;i<nt;i++)
		for(j=0;j<nx;j++)
			a[i][j]=new float *[ny];
	for(i=0;i<nt;i++)
		for(j=0;j<nx;j++)
			for(k=0;k<ny;k++)
			a[i][j][k]=new float [nz];
	return a;
}
