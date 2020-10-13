#!/bin/bash
exec 119<data_file # open 19 for 'data_file'
lsof -p $$
cat 0<&119  # have standard input be whatever file descriptor 19 refers to
exec 117>&1  # save stdout in 7
exec 1>&-  # close stdout
lsof -p $$
cat   # no stdout now
exec 1>&117 # copy 7 back to stdout
cat # type shows nothing with out 'enter'
# exit the bash by 'ctrl+c'
 

