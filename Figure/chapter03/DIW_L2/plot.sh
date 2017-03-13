##############  Plot Vp model ############
data=1layer
out=1layer
output=1layer.eps
bclip=2700 wclip=2300
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=3layer
out=3layer
output=3layer.eps
bclip=2700 wclip=2300
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

data=true.vp
out=Sigsbee
output=Sigsbee.eps
bclip=2833.38 wclip=2153.3
gnuplot -e "wclip='${wclip}';bclip='${bclip}';datafilevp='${data}'; outputfilevp='${output}'" gnuplot_imagevp.plg
epstopdf ${out}.eps

