##############  Plot Vp model ############
data=VsVp.vp
out=vp
output=vp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=VsVp.vs
out=vs
output=vs.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vs.plg
epstopdf ${out}.eps
##############  Plot smooth model ############
data=VsVpsmooth.vp
out=vpsmooth
output=vpsmooth.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=VsVpsmooth.vs
out=vssmooth
output=vssmooth.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vs.plg
epstopdf ${out}.eps

data=Vsborn_decompPSsmooth3_scaledata_MulV_vp_stage1_it_46.bin
out=vpdecomp
output=vpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_imagevp.plg
epstopdf ${out}.eps

data=Vsborn_nodecomp_vp_stage1_it_50.bin
out=vpnodecomp
output=vpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_imagevp.plg
epstopdf ${out}.eps

data=Vsborn_decompPSsmooth3_scaledata_MulV_vs_stage1_it_46.bin
out=vsdecomp
output=vsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_imagevs.plg
epstopdf ${out}.eps

data=Vsborn_nodecomp_vs_stage1_it_50.bin
out=vsnodecomp
output=vsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_imagevs.plg
epstopdf ${out}.eps

data=Vsborn_decompPSsmooth3_scaledata_MulV_vp_stage1_it_11.bin
out=RTMvpdecomp
output=RTMvpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_RTMimagevp.plg
epstopdf ${out}.eps

data=Vsborn_nodecomp_vp_stage1_it_11.bin
out=RTMvpnodecomp
output=RTMvpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_RTMimagevp.plg
epstopdf ${out}.eps

data=Vsborn_decompPSsmooth3_scaledata_MulV_vs_stage1_it_1.bin
out=RTMvsdecomp
output=RTMvsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_RTMimagevs.plg
epstopdf ${out}.eps

data=Vsborn_nodecomp_vs_stage1_it_1.bin
out=RTMvsnodecomp
output=RTMvsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_Vs_RTMimagevs.plg
epstopdf ${out}.eps
