##############  Plot Vp model ############
##############  Plot smooth model ############
data=1decomp_smooth10_vp_stage1_it_1.bin
out=RTMref
output=RTMref.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=1decomp_smooth10_vp_stage1_it_32.bin
out=ref
output=ref.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_nodecomp_vp_stage1_it_1.bin
out=RTMborn
output=RTMborn.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_bornvp.plg
epstopdf ${out}.eps

data=born_nodecomp_vp_stage1_it_32.bin
out=born
output=born.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

