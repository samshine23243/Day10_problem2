echo  "flip coin simulation problem"
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
for ((i=1;i<=10;i++))
do
	randomNumber=$(($RANDOM%2))
		if [ $randomNumber -eq 1 ]
		then
   		headcount=$(($headcount+1))
		else
   		tailcount=$(($tailcount+1))
		fi
done
echo "head won count:" $headcount
echo "tail won count:" $tailcount
