##############  Plot Vp model ############
data=true.vp
out=vp
output=vp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epstopdf ${out}.eps

data=true.vs
out=vs
output=vs.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vs.plg
epstopdf ${out}.eps
##############  Plot Vp model ############
##############  Plot smooth model ############
#data=born_nodecomp_simul_vp_stage1_it_1.bin
#out=RTMvpdecomp
#output=RTM.eps
#gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
#epstopdf ${out}.eps

##data=born_nodecomp_simul_vs_stage1_it_1.bin
#out=RTMvpdecomp
#output=RTMvpdecomp.eps
#gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_bornvp.plg
#epstopdf ${out}.eps

data=born_nodecomp_simul_vp_stage1_it_30.bin
out=vpdecomp
output=vpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_nodecomp_simul_vs_stage1_it_40.bin
out=vsdecomp
output=vsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

##############  Plot smooth model ############
#data=born_Truenodecomp_simul_vp_stage1_it_1.bin
#out=RTMvpnodecomp
#output=RTMvpnodecomp.eps
#gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
#epstopdf ${out}.eps

#data=born_Truenodecomp_simul_vs_stage1_it_1.bin
#out=RTMvsnodecomp
#output=RTMvsnodecomp.eps
#gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_bornvp.plg
#epstopdf ${out}.eps

data=born_Truenodecomp_simul_vp_stage1_it_40.bin
out=vpnodecomp
output=vpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=born_Truenodecomp_simul_vs_stage1_it_40.bin
out=vsnodecomp
output=vsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps
