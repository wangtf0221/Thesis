##############  Plot Only Vp model ############
data=2vp
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_modelvp.plg
epspdf ${data}.eps

##############  Plot Only Vs model ############
data=2vs
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_modelvs.plg
epspdf ${data}.eps

data=Vp.onlyvs
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps
mv ${data}.pdf Vponlyvp.pdf

data=lambda.onlyvp
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps
mv ${data}.pdf lambdaonlyvp.pdf

data=mu.onlyvp
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps
mv ${data}.pdf muonlyvp.pdf

data=Vs.onlyvp
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps
mv ${data}.pdf Vsonlyvp.pdf

data=Vp.onlyvs
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps
mv ${data}.pdf Vponlyvs.pdf

data=Vs.onlyvs
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps
mv ${data}.pdf Vsonlyvs.pdf

data=Vp.onlyvs.PP
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_grad.plg
epspdf ${data}.eps
mv ${data}.pdf VponlyvsPP.pdf

data=Vs.onlyvs.PP
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps
mv ${data}.pdf VsonlyvsPP.pdf

data=Vs.onlyvs.PS
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps
mv ${data}.pdf VsonlyvsPS.pdf

data=Vs.onlyvs.SP
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps
mv ${data}.pdf VsonlyvsSP.pdf

data=Vs.onlyvs.SS
output=${data}.eps
gnuplot -e "datafilevp='${data}'; outputfilevp='${output}'" gnuplot_gradvs.plg
epspdf ${data}.eps
mv ${data}.pdf VsonlyvsSS.pdf
