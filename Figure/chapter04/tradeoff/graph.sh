#/bin/bash
g++ extract.cpp
./a.out 200 200 $1 model/delta_vs
mv output tmp1
#farith < model/true in2=model/delta_vs op=mul> tmp2
./a.out 200 200 $1 $2
#./a.out 500 280 $1 model/delta_vs
cat tmp1 output> tmp2
xgraph < tmp2 n=200,200 d1=1,1 $3 $4 width=300 height=700&
