g++ extract.cpp
sustrip < smooth3scatt_y.su > 1
sustrip < smooth3born_y.su> 2
sustrip < smooth3trueref_y.su> 3
#sustrip < smooth8scatt_y.su.shot10 > 1
#sustrip < smooth8born_y.su.shot10> 2
#sustrip < smooth8trueref_y.su.shot10> 3
./a.out 200 2000 100 1 
mv output smooth3_1
./a.out 200 2000 100 2
mv output smooth3_2
./a.out 200 2000 100 3
mv output smooth3_3
#farith < output op=scale scale=11.5 > tmp2
#farith < output op=scale scale=11.5 > tmp2
cat smooth3_1 smooth3_2 smooth3_3> tmp22
xgraph < tmp22 n=2000,2000,2000 d1=1,1,1&

g++ extract.cpp
sustrip < smooth8scatt_y.su.shot10 > 1
sustrip < smooth8born_y.su.shot10> 2
sustrip < smooth8trueref_y.su.shot10> 3
./a.out 200 2000 100 1 
mv output smooth8_1
./a.out 200 2000 100 2
mv output smooth8_2
./a.out 200 2000 100 3
mv output smooth8_3
#farith < output op=scale scale=11.5 > tmp2
#farith < output op=scale scale=11.5 > tmp2
cat smooth8_1 smooth8_2 smooth8_3> tmp22
xgraph < tmp22 n=2000,2000,2000 d1=1,1,1&
