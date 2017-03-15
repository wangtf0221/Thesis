##############  Plot Vp model ############
bclip=2.61189e-09 wclip=-2.73878e-09
data=DataPP_true
output=DataPP_true.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_SurfaceData.plg
epspdf ${output}
 
bclip=1.4829e-09 wclip=-1.55211e-09
data=DataPP_init
output=DataPP_init.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_SurfaceData.plg
epspdf ${output}

bclip=1.25661e-09 wclip=-1.26979e-09
data=DataPP_werti
output=DataPP_werti.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_SurfaceData.plg
epspdf ${output}
#epspdf ${out}.eps
 
bclip=2.65403e-09 wclip=-2.69011e-09
data=DataPS_true
output=DataPS_true.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_SurfaceData.plg
epspdf ${output}
#epspdf ${out}.eps
 
bclip=3.1811e-18 wclip=-3.15168e-18
data=DataPS_init
output=DataPS_init.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_SurfaceData.plg
epspdf ${output}
#epspdf ${out}.eps

bclip=3.00996e-18 wclip=-2.99251e-18
data=DataPS_werti
output=DataPS_werti.eps
gnuplot -e "wclip='${wclip}$';bclip='${bclip}'; datafilevs='${data}'; outputfilevs='${output}'" gnuplot_SurfaceData.plg
epspdf ${output}
#epspdf ${out}.eps
 
