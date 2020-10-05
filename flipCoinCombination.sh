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

# flipCoin Combination for Doublet

get_FlipCoin_Doublet(){

declare -A Doublet

comb=(HH HT TH TT)
hh=0
ht=0
th=0
tt=0

for((i=0;i<=num;i++))
do
	random=$(($RANDOM%4))
        case $random in
		0)
			((hh++))
	;;
		1)
			((ht++))
	;;
		2)
			((th++))
	;;

		3)
			((tt++))
	;;
esac
	Doublet[$i]=${comb[$random]}
done

	echo ${Doublet[@]}
	echo "hhCount=$hh"
	echo "htCount=$ht"
	echo "thCount=$th"
	echo "ttCount=$tt"
	pHH=$(($hh*100/$num))
	pHT=$(($ht*100/$num))
	pTH=$(($th*100/$num))
	pTT=$(($tt*100/$num))

	echo "Percent_HH=$pHH%"
	echo "Percent_HT=$pHT%"
	echo "Percent_TH=$pTH%"
	echo "Percent_TT=$pTT%"

}
echo "enter a number"
read num
get_FlipCoin_Doublet $num
