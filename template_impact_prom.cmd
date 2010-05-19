setMode -promfile
setsubMode -pffserial
addPromDevice -p 1 -name xcf04s
addDesign -version 0 -name 0
addDeviceChain -index 0
addDevice -p 1 -file "XXX.bit"
generate -format mcs -fillvalue FF -output "XXX.mcs"

setMode -bscan
setCable -port auto
addDevice -p 1 -sprom xcf04s -file "XXX.mcs"
Program -e -p 1 -v
quit
