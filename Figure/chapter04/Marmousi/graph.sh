#/bin/bash
farith < model/nx500nz280dxdz12.5.smooth10.vs in2=$2 op=mul> tmp1
g++ extract.cpp
./a.out 500 280 $1 tmp1
mv output tmp1
farith < model/nx500nz280dxdz12.5.smooth10.vs in2=model/delta_vs op=mul> tmp2
./a.out 500 280 $1 tmp2
#./a.out 500 280 $1 model/delta_vs
cat tmp1 output> tmp2
xgraph < tmp2 n=280,280 d1=1,1 $3 $4 width=300 height=700&
