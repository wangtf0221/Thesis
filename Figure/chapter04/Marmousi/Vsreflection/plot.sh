##############  Plot Vp model ############
./filter1 Vssmoothnew_decomp_adjoint_vp_stage1_it_11.bin tmp
data=tmp
out=vpdecomp
output=vpdecomp.eps
bclip=387.995 wclip=-454.12
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter1 Vssmoothnew_nodecomp_adjoint_vp_stage1_it_20.bin tmp
data=tmp
out=vpnodecomp
output=vpnodecomp.eps
bclip=478.682 wclip=-541.513
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter3 Vssmoothnew_decomp_adjoint_vs_stage1_it_40.bin tmp
#./filter2 Vssmoothnew_decomp_adjoint_vs_stage1_it_40.bin tmp
data=tmp
out=vsdecomp
output=vsdecomp.eps
 bclip=418.552 wclip=-400.76
# bclip=318.552 wclip=-300.76
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter3 Vssmoothnew_nodecomp_adjoint_vs_stage1_it_40.bin tmp
#./filter2 Vssmoothnew_nodecomp_adjoint_vs_stage1_it_40.bin tmp
data=tmp
out=vsnodecomp
output=vsnodecomp.eps
 bclip=418.309 wclip=-405.886
# bclip=318.309 wclip=-295.886
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

./filter1 Vssmoothnew_decomp_adjoint_firstvs2nd_vp_stage1_it_23.bin tmp
data=tmp
out=firstvs2ndvpdecomp
output=firstvs2ndvpdecomp.eps
bclip=499.681 wclip=-519.944
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=Vssmoothnew_decomp_adjoint_vp_stage1_it_1.bin
out=RTMvpdecomp
output=RTMvpdecomp.eps
bclip=53.3271 wclip=-60
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=Vssmoothnew_nodecomp_adjoint_vp_stage1_it_1.bin
out=RTMvpnodecomp
output=RTMvpnodecomp.eps
bclip=53.2056 wclip=-60
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=Vssmoothnew_decomp_adjoint_vs_stage1_it_1.bin
out=RTMvsdecomp
output=RTMvsdecomp.eps
bclip=28.8757 wclip=-30
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=Vssmoothnew_nodecomp_adjoint_vs_stage1_it_1.bin
out=RTMvsnodecomp
output=RTMvsnodecomp.eps
bclip=30 wclip=-29.6865
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps
