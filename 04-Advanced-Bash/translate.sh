#!/bin/bash
declare -l line # translate from uppercase to lowercase
while
  read line
do
  echo $line
done

  
#coproc ./translate.sh
#echo BaNAna >&"${COPROC[1]}"
#cat <&"${COPROC[0]}"
#ctrl+c
#jobs
#kill %1

#############################

#coproc myt { ./translate.sh; }
#echo BaNAna >&"${myt[1]}"
#cat <&"${myt[0]}"
#ctrl+c
#jobs
#kill %1
