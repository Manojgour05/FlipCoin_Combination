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


# fliping coin for Triplet Combination


get_FlipCoinCoimbination_Triplet(){

declare -A Triplet

comb=(HHH HHT HTH HTT THH THT TTH TTT)

hhh=0
hht=0
hth=0
htt=0
thh=0
tht=0
tth=0
ttt=0

for((i=0;i<=$num;i++))
do
	random=$(($RANDOM%8))
case $random in 
	0)
		((hhh++))
	;;
	1)
		((hht++))
	;;
	2)
		((hth++))
	;;
	3)
		((htt++))
	;;
	4)
		((thh++))
	;;
	5)
		((tht++))
	;;
	6)
		((tth++))
	;;
	7)
		((ttt++))
	;;
esac

	Triplet[$i]=${comb[$random]}
done

 	echo "${Triplet[@]}"
	echo "HHH=$hhh"
	echo "HHT=$hht"
	echo "HTH=$hth"
	echo "HTT=$htt"
	echo "THH=$thh"
	echo "THT=$tht"
	echo "TTH=$tth"
	echo "TTT=$ttt"
	pHHH=$(($hhh*100/$num))
	pHHT=$(($hht*100/$num))
	pHTH=$(($hth*100/$num))
	pHTT=$(($htt*100/$num))
	pTHH=$(($thh*100/$num))
	pTHT=$(($tht*100/$num))
	pTTH=$(($tth*100/$num))
	pTTT=$(($ttt*100/$num))

	echo "Percent_HHH=$pHHH%"
	echo "Percent_HHT=$pHHT%"
	echo "Percent_HTH=$pHTH%"
	echo "Percent_HTT=$pHTT%"
	echo "Percent_THH=$pTHH%"
	echo "Percent_THT=$pTHT%"
	echo "Percent_TTH=$pTTH%"
	echo "Percnet_TTT=$pTTT%"
}

echo "Enter a number"
read num
get_FlipCoinCoimbination_Triplet $num
