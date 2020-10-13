trap 'echo just got int; exit' INT # ctrl+c
trap "echo you cannot quit now" QUIT # ctrl+\
cd /
while
true
do
	echo looping
        du -m * 2>/dev/null     
        echo sleeping
        sleep 5
done

