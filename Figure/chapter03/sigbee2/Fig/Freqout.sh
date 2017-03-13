##############  Plot Vp model ############
bclip=0.0117105 
wclip=-0.0103532
data=cutimage_true.vp
out=cutimage_truevp
output=cutimage_truevp.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
#epspdf ${out}.eps

bclip=2.33223e+12 wclip=-2.06591e+12
data=cutimage_true.vs
out=cutimage_truevs
output=cutimage_truevs.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}';datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
#epspdf ${out}.eps

bclip=0.00815581 wclip=-0.00825477
data=cutimage_init.vp
out=cutimage_initvp
output=cutimage_initvp.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
#epspdf ${out}.eps

bclip=0.00270664 wclip=-0.00242793
data=cutimage_init.vs
out=cutimage_initvs
output=cutimage_initvs.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}';datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
#epspdf ${out}.eps

bclip=0.00225608 wclip=-0.0022589
data=cutimage_werti.vp
out=cutimage_wertivp
output=cutimage_wertivp.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
#epspdf ${out}.eps

bclip=0.00258873 wclip=-0.00245403
data=cutimage_werti.vs
out=cutimage_wertivs
output=cutimage_wertivs.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}';datafilevs='${data}'; outputfilevs='${output}'" gnuplot_imagevs.plg 
#epspdf ${out}.eps

