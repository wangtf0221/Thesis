##############  Plot Vp model ############
data=nx2800nz700dxdz5.vp
out=truevp
output=truevp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epspdf ${out}.eps

data=nx2800nz700dxdz5.smooth.vp
out=initvp
output=initvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epspdf ${out}.eps

data=model_nodecomp_vp_stage5_it_1.bin
out=nodevp
output=nodevp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epspdf ${out}.eps

data=model_decomp_vp_stage3_it_8.bin
out=devp
output=devp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp.plg
epspdf ${out}.eps

##############  Plot Vs model ############
data=nx2800nz700dxdz5.vs
output=truevs.eps
out=truevs
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs.plg
epspdf ${out}.eps

data=nx2800nz700dxdz5.smooth.vs
output=initvs.eps
out=initvs
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs.plg
epspdf ${out}.eps

data=model_nodecomp_vs_stage5_it_1.bin
output=nodevs.eps
out=nodevs
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs.plg
epspdf ${out}.eps

data=model_decomp_vs_stage3_it_8.bin
output=devs.eps
out=devs
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs.plg
epspdf ${out}.eps
#pdftk ${out}.pdf cat 1E output Rotated${out}.pdf
#mv Rotated${out}.pdf devs.pdf

#./L2.plg
#epstopdf L2.eps
#pdftk L2.pdf cat 1E output RotatedL2.pdf
#mv RotatedL2.pdf L2.pdf

