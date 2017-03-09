##############  Plot Vp model ############
./filter1 Vssmoothnew_decomp_adjoint_vp_stage1_it_11.bin tmp
data=tmp
out=vpdecomp
output=vpdecomp.eps
bclip=561.458 wclip=-585.869
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter1 Vssmoothnew_nodecomp_adjoint_vp_stage1_it_20.bin tmp
data=tmp
out=vpnodecomp
output=vpnodecomp.eps
bclip=628.241 wclip=-604.452
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter2 Vssmoothnew_decomp_adjoint_vs_stage1_it_40.bin tmp
data=tmp
out=vsdecomp
output=vsdecomp.eps
bclip=478.54 wclip=-415.274
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter2 Vssmoothnew_nodecomp_adjoint_vs_stage1_it_40.bin tmp
data=tmp
out=vsnodecomp
output=vsnodecomp.eps
bclip=515.537 wclip=-499.162
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter1 Vssmoothnew_decomp_adjoint_firstvs2nd_vp_stage1_it_23.bin tmp
data=tmp
out=firstvs2ndvpdecomp
output=firstvs2ndvpdecomp.eps
bclip=737.109 wclip=-597.193
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

#data=
##out=RTMvpdecomp
#output=RTMvpdecomp.eps
#gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
#epstopdf ${out}.eps
#
#data=smoothnew_nodecomp_adjoint_vp_stage1_it_1.bin
#out=RTMvpnodecomp
#output=RTMvpnodecomp.eps
#gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
#epstopdf ${out}.eps
#
#data=smoothnew_decomp_adjoint_vs_stage1_it_1.bin
#out=RTMvsdecomp
#output=RTMvsdecomp.eps
#gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
#epstopdf ${out}.eps
#
#data=smoothnew_nodecomp_adjoint_vs_stage1_it_1.bin
#out=RTMvsnodecomp
#output=RTMvsnodecomp.eps
#gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
#epstopdf ${out}.eps
