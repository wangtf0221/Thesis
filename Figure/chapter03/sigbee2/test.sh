##############  Plot Vp model ############
./a.out badinit_vp_stage3_it_38.bin tmp
data=tmp
out=badinitvp
output=badinitvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

./a.out badinit_vs_stage3_it_38.bin tmp
data=tmp
out=badinitvs
output=badinitvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

./a.out 80_init_p_stage2_it1.old tmp
data=tmp
out=NoLSF_Gra_vp
output=NoLSF_Gra_vp.eps
bclip=1.030306e-07 wclip=-1.03433e-07
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}';outputfilevs='${output}'" gnuplot_imagevs.plg
epspdf ${out}.eps

./a.out LSF_80_init_p_stage2_it1.old tmp
data=tmp
out=LSF_Gra_vp
output=LSF_Gra_vp.eps
bclip=1.030306e-07 wclip=-1.03433e-07
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}';outputfilevs='${output}'" gnuplot_imagevs.plg
epspdf ${out}.eps

./a.out 80_init_vp_stage80_it_1.bin tmp
data=tmp
out=NoLSF_vp
output=NoLSF_vp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

