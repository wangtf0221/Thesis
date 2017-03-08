#/bin/bash
g++ extract.cpp
for (( i=0; i <= 10; i++ )) ;
do
	((j=50+i*10));
#	echo ${j}
	./a.out 200 200 ${j} delta_vp
	mv output line/true${j}
done

for (( i=0; i <= 10; i++ )) ;
do
	((j=50+i*10));
	./a.out 200 200 ${j} 1decomp_smooth10_vp_stage1_it_32.bin
	mv output line/ref${j}
done

for (( i=0; i <= 10; i++ )) ;
do
	((j=50+i*10));
	./a.out 200 200 ${j} born_nodecomp_vp_stage1_it_32.bin
	mv output line/born${j}
done
