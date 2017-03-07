#!/bin/sh
g++ cut.cpp
./a.out
smooth2< nx500nz243dxdz12.5.vp n1=243 n2=500 r1=10 r2=10 > nx500nz243dxdz12.5.smooth10.vp
smooth2< nx500nz243dxdz12.5.vs n1=243 n2=500 r1=10 r2=10 > nx500nz243dxdz12.5.smooth10.vs
g++ vmod.cpp
./a.out
rm nx500nz243dxdz12.5.vp nx500nz243dxdz12.5.vs nx500nz243dxdz12.5.smooth10.vp nx500nz243dxdz12.5.smooth10.vs
#farith < nx500nz280dxdz12.5.vp in2=nx500nz280dxdz12.5.smooth10.vp op=sub > delta_vp
#farith < nx500nz280dxdz12.5.vs in2=nx500nz280dxdz12.5.smooth10.vs op=sub > delta_vs
#smooth2< nx500nz280dxdz12.5.vp n1=280 n2=500 r1=3 r2=3 > nx500nz280dxdz12.5.smooth10.vp
#smooth2< nx500nz280dxdz12.5.vs n1=280 n2=500 r1=3 r2=3 > nx500nz280dxdz12.5.smooth10.vs
