#!/bin/csh -f 

setenv ASSIGNS_FILE    /nuist/scratch/pb02005030/lism/v47_smoke/meicccccc/ASSIGNS.test_MEIC
source $ASSIGNS_FILE

setenv MET_CRO_3D      $METDAT/METCRO3D_190210.nc
setenv LAYER_FRACTION  ./layer_fraction.txt
setenv INFILE          $A_OUT/agts_l.edgar.20190211.1.Lam_shanghai.out_eth.ncf
setenv OUTFILE         ./emiss_hello.nc

./layalloc<< EOF
Y
MET_CRO_3D
LAYER_FRACTION
INFILE
OUTFILE

EOF
