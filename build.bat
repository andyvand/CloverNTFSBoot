set PATH=C:\WATCOM\BINNT;%PATH%
ml /c /Cx /omf /AT /Zm /Fo"ntfsboot.obj" ntfsboot.asm
ml /c /Cx /omf /AT /Zm /Fo"ntfsbootalt.obj" ntfsbootalt.asm
ml /c /Cx /omf /AT /Zm /Fo"ntfsbootaltbmgr.obj" ntfsbootaltbmgr.asm
wlink name ntfsboot d all sys dos com op m op maxe=25 @ntfsboot.lk1
wlink name ntfsbootalt d all sys dos com op m op maxe=25 @ntfsbootalt.lk1
wlink name ntfsbootaltbmgr d all sys dos com op m op maxe=25 @ntfsbootaltbmgr.lk1
dd if=ntfsboot.com of=ntfsboot.bin count=1 bs=8192
dd if=ntfsbootalt.com of=ntfsbootalt.bin count=1 bs=8192
dd if=ntfsbootaltbmgr.com of=ntfsbootaltbmgr.bin count=1 bs=8192
