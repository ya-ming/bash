#!/bin/bash
cd /usr/bin
for i in *
do
if [[ -f $i ]]
then
     if
     strings $i | grep -q "unable to fork"
     then
         echo $i has \"unable to fork\" in it
     fi
fi
done

# Output
#eject has "unable to fork" in it
#git has "unable to fork" in it
#git-receive-pack has "unable to fork" in it
#git-shell has "unable to fork" in it
#git-upload-archive has "unable to fork" in it
#git-upload-pack has "unable to fork" in it
#makeglossaries has "unable to fork" in it
#sudo has "unable to fork" in it
#sudoedit has "unable to fork" in it
#watch has "unable to fork" in it