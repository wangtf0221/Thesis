##############  Plot Vp model ############
./filter1 smoothnew_decomp_adjoint_vp_stage1_it_18.bin tmp
data=tmp
out=vpdecomp
output=vpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter1 smoothnew_nodecomp_adjoint_vp_stage1_it_18.bin tmp
data=tmp
out=vpnodecomp
output=vpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter2 smoothnew_decomp_adjoint_vs_stage1_it_28.bin tmp
data=tmp
out=vsdecomp
output=vsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

./filter2 smoothnew_nodecomp_adjoint_vs_stage1_it_28.bin tmp
data=tmp
out=vsnodecomp
output=vsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevs.plg
epstopdf ${out}.eps

data=smoothnew_decomp_adjoint_vp_stage1_it_1.bin
out=RTMvpdecomp
output=RTMvpdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevp.plg
epstopdf ${out}.eps

data=smoothnew_nodecomp_adjoint_vp_stage1_it_1.bin
out=RTMvpnodecomp
output=RTMvpnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevp.plg
epstopdf ${out}.eps

data=smoothnew_decomp_adjoint_vs_stage1_it_1.bin
out=RTMvsdecomp
output=RTMvsdecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevs.plg
epstopdf ${out}.eps

data=smoothnew_nodecomp_adjoint_vs_stage1_it_1.bin
out=RTMvsnodecomp
output=RTMvsnodecomp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_RTMimagevs.plg
epstopdf ${out}.eps
