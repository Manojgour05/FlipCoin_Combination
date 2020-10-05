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


