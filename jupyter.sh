# Script that runs a jupyter notebook for port-forwarding to.


# source IC for python packages (but more importantly boots up the conda packages needed)
source /gluster/data/next/software/IC_sophronia/config_ic.sh

# open up jupyter notebook within the NEXT directory
cd /gluster/data/next/notebooks

jupyter lab --port 4202 --LabApp.token='' 

