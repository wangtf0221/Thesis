##############  Plot Vp model ############
data=cuttrue.vp
out=cuttruevp
output=cuttruevp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=cuttrue.vs
out=cuttruevs
output=cuttruevs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=cutinit.vp
out=cutinitvp
output=cutinitvp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=cutinit.vs
out=cutinitvs
output=cutinitvs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=cutnode.vp
out=nodevp
output=nodevp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=cutnode.vs
out=nodevs
output=nodevs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=cutde.vp
out=devp
output=devp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=cutde.vs
out=devs
output=devs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=cutnewinit3.vp
out=newinit3vp
output=newinit3vp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=cutnewinit3.vs
out=newinit3vs
output=newinit3vs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps

data=CutLownode.vp
out=CutLownodevp
output=CutLownodevp.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_vp_arrow.plg
epspdf ${out}.eps

data=CutLownode.vs
out=CutLownodevs
output=CutLownodevs.eps
gnuplot -e "datafilevs='${data}'; outputfilevs='${output}'" gnuplot_vs_arrow.plg
epspdf ${out}.eps
