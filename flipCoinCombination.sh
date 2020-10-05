#!/bin/sh

echo "Displaying winning percentage of Head and Tail Combination in a singlet,DoubletTriplet"

echo "Flip Coin Simulation"
flipCoin=$(($RANDOM%2))


if [ $flipCoin -eq 0 ]
then
        echo "Head winner"
else
        echo "Tail winner"
fi

get_Singlet_Combination(){
declare -A Singlet
comb=(H T)
hcount=0
tcoount=0
percent_head=0
for((i=1;i<=$num;i++))
do
	random=$(($RANDOM%2))
    case $random in 
	0)
	  ((hcount++))
	;;
	1)
	   ((tcount++))
	;;
esac
 Singlet[$i]=${comb[$random]}
done
echo ${Singlet[@]}
echo "Head=$hcount"
echo "Tail=$tcount"
percent_head=$(($hcount*100/$num))
percent_tail=$(($tcount*100/$num))
echo "Percent_Tail=$percent_tail%"
echo "Percent_Head=$percent_head%"
}
echo "Enter a number"
read num
get_Singlet_Combination $num
