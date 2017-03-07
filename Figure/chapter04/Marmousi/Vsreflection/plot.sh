##############  Plot Vp model ############
data=OnlyVp.vp
out=OnlyVp
output=OnlyVp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=OnlyVp.vs
out=OnlyVs
output=OnlyVs.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vs.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vp_stage1_it_44.bin
out=imagevpdecomp
output=imagevpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vp_stage1_it_40.bin
out=imagevpnodecomp
output=imagevpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vs_stage1_it_44.bin
out=imagevsdecomp
output=imagevsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vs_stage1_it_40.bin
out=imagevsnodecomp
output=imagevsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vp_stage1_it_1.bin
out=RTMimagevpdecomp
output=RTMimagevpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevp.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vp_stage1_it_1.bin
out=RTMimagevpnodecomp
output=RTMimagevpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevp.plg
epstopdf ${out}.eps

data=born_decompsmooth3_scaledata_MulV_vs_stage1_it_1.bin
out=RTMimagevsdecomp
output=RTMimagevsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevs.plg
epstopdf ${out}.eps

data=born_nodecompsmooth3_scaledata_MulV_vs_stage1_it_1.bin
out=RTMimagevsnodecomp
output=RTMimagevsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevs.plg
epstopdf ${out}.eps
