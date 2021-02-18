echo "flip coin simulation problem" 
head=1 
tail=0 
randomNumber=$(($RANDOM%2)) 
if [ $randomNumber -eq 1 ] 
then
	echo "head winner"
else
	echo "tail winner"
fi
headcount=0
tailcount=0

for ((i=1;i<=20;i++))
do
	randomNumber=$(($RANDOM%2))
		if [ $randomNumber -eq 1 ]
		then
   		headcount=$(($headcount+1))
		else
   		tailcount=$(($tailcount+1))
		fi
done

if [ $headcount -gt $tailcount ]
then
	diff=$(($headcount-$tailcount))
	echo "head won by difference:" $diff
elif [ $headcount -lt $tailcount ]
then
	diff=$(($tailcount-$headcount))
	echo "tail won by difference:" $diff
else
	echo "its tie"
	for ((i=1;i<=3;i++))
	do
		randomNumber=$(($RANDOM%2))
		if [ $randomNumber -eq 1 ]
		then
			headcount=$(($headcount+1))
		else
			tailcount=$(($tailcount+1))
		fi
	done

	if [ $headcount -gt $tailcount ]
	then
		echo "head won..."
	else
		echo "tail won..."
	fi
fi

