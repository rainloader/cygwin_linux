#!/bin/bash
OPTIONS="1 2 3 4 5 6 7 Withdraw"
BALANCE=0
function display_balance {
	echo $BALANCE dollar
}
select opt in $OPTIONS; do
	if [ "$opt" = "Withdraw" ]; then
		echo done
		display_balance
		exit
	elif [ "$opt" = "1" ]; then
		let BALANCE=BALANCE+1	
		echo 1 dollar cascated.
		echo total $BALANCE dollar
	elif [ "$opt" = "2" ]; then
		let BALANCE=BALANCE+2
		echo 2 dollars cascated.
		display_balance
	elif [ "$opt" = "3" ]; then
		let BALANCE=BALANCE+3
		echo dangerously greedy. 3 dollars cascated. it is maximum rate.
		display_balance
	elif [ "$opt" = "4" ]; then
		echo too greedy. cannot except your need.
	else
		clear
		echo wrong input
	fi
done

