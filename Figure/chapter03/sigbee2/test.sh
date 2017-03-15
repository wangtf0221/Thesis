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

##############  Plot Low Frequency Cut model ############
./a.out CutLowFreq3Hznewinit3_vp_stage5_it_10.bin tmp
data=tmp
out=3Hzvp
output=3Hzvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${output}

./a.out CutLowFreq5Hznewinit3_vp_stage5_it_10.bin tmp
data=tmp
out=5Hzvp
output=5Hzvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${output}

./a.out CutLowFreq7Hznewinit3_vp_stage5_it_10.bin tmp
data=tmp
out=7Hzvp
output=7Hzvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${output}

./a.out CutLowFreq3Hznewinit3_vs_stage5_it_10.bin tmp
data=tmp
out=3Hzvs
output=3Hzvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${output}

./a.out CutLowFreq5Hznewinit3_vs_stage5_it_10.bin tmp
data=tmp
out=5Hzvs
output=5Hzvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${output}

./a.out CutLowFreq7Hznewinit3_vs_stage5_it_10.bin tmp
data=tmp
out=7Hzvs
output=7Hzvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${output}
