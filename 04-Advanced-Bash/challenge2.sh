#!/bin/bash
echo options are $@
opts="a b \$1 \$2  "
#set -- "$opts"
eval set -- $opts
echo options are: $@


# comment out eval set -- $opts 
#./challenge2.sh x y z
#options are x y z
#options are: a b $1 $2

# comment out set -- "$opts"
#./challenge2.sh x y z
#options are x y z
#options are: a b x y
