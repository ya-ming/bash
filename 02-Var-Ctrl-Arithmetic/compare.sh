#!/bin/bash
x=01
y=1
echo comparing $x and $y
if
[ $x == $y ] # string compare
then
   echo ==
else
   echo not ==
fi
if
[ $x -eq $y ] # numeric compare
then
   echo eq 
else
   echo not eq 
fi

if
((x==y)) # numeric compare
then
   echo '(())' ==
else
   echo not '(())' ==
fi


