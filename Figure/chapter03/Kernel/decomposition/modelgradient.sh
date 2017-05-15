##############  Plot Only Vp model ############

data1=ReceiverVp.onlyvs-all
data=recVp_all
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps

data1=ReceiverVp.onlyvs-PP
data=recVp_PP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps

data1=ReceiverVp.onlyvs-PS
data=recVp_PS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps

data1=SourceVp.onlyvs-all
data=srcVp_all
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps

data1=SourceVp.onlyvs-PP
data=srcVp_PP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps

data1=SourceVp.onlyvs-PS
data=srcVp_PS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-all
data=recVs_all
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PP
data=recVs_PP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PP_PPcP
data=recVs_PP_PPcP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PP_PPcS
data=recVs_PP_PPcS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PP_PScP
data=recVs_PP_PScP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PP_PScS
data=recVs_PP_PScS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PS
data=recVs_PS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PS_PPcP
data=recVs_PS_PPcP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PS_PPcS
data=recVs_PS_PPcS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PS_PScP
data=recVs_PS_PScP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=ReceiverVs.onlyvs-PS_PScS
data=recVs_PS_PScS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=SourceVs.onlyvs-all
data=srcVs_all
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=SourceVs.onlyvs-PP
data=srcVs_PP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=SourceVs.onlyvs-PP_PcPP
data=srcVs_PP_PcPP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=SourceVs.onlyvs-PP_PcPS
data=srcVs_PP_PcPS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps


data1=SourceVs.onlyvs-PS_PcPP
data=srcVs_PS_PcPP
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps

data1=SourceVs.onlyvs-PS_PcPS
data=srcVs_PS_PcPS
output=${data}.eps
gnuplot -e "datafilevp='${data1}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps


