# !/bin/bash
ip="server1 server2"
for i in $ip;
do 
	echo "==================================="
	echo "USERS OF" $i
	ssh $i cat /etc/passwd | grep 1[0-9][0-9][0-9] | cut -d ':' -f1
	echo "==================================="
done

#echo "=================================="
#echo "YOU HAVE CONNECTED TO BASTION HOST"
#echo "=================================="
#ssh 172.31.35.59
#echo "=================================="
#echo "YOU HAVE CONNECTED TO CLIENT HOST"
#echo "=================================="
