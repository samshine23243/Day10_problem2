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
