##############  Plot Vp model ############
data=OnlyVp.vp
out=vp
output=vp.eps
a=1500
b=4700
gnuplot -e "a='${a}';b='${b}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=OnlyVp.vs
out=vs
output=vs.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vs.plg
epstopdf ${out}.eps
##############  Plot smooth model ############
data=OnlyVpsmooth.vp
out=vpsmooth
output=vpsmooth.eps
a=1500
b=4700
gnuplot -e "a='${a}';b='${b}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
#gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=OnlyVpsmooth.vs
out=vssmooth
output=vssmooth.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vs.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vp_stage1_it_44.bin
out=vpdecomp
output=vpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vp_stage1_it_40.bin
out=vpnodecomp
output=vpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vs_stage1_it_44.bin
out=vsdecomp
output=vsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vs_stage1_it_40.bin
out=vsnodecomp
output=vsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vp_stage1_it_1.bin
out=RTMvpdecomp
output=RTMvpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevp.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vp_stage1_it_1.bin
out=RTMvpnodecomp
output=RTMvpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevp.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vs_stage1_it_1.bin
out=RTMvsdecomp
output=RTMvsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevs.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vs_stage1_it_1.bin
out=RTMvsnodecomp
output=RTMvsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevs.plg
epstopdf ${out}.eps
