#!/usr/bin/env bash

function mainProcess {
	echo "*******************************"
	echo "Hello! Welcome to GuessingGame"
	echo "*******************************"
	echo ""
	echo "First, tell me your name please" 
	read name

	#Finding the correct answer.
	answer=$(ls | wc -l)

	# If win is 0, the gamer still not win.
	win=0
	while [[ win -eq 0 ]] 
	do
		echo "Guess!, how many files are in the current directory?"
		read userAnswer
	
		if [[ $userAnswer -eq $answer ]]
		then
			echo "************************************"
			echo "!!!Congratulations $name, you WIN!!!"
			echo "************************************"
			let win=$win+1
		else
			if [[ $userAnswer -gt $answer ]]
			then
				echo "-------------------------------------"
				echo "[!] Fail, the number of files is less"
				echo "-------------------------------------"
			else
				echo "-------------------------------------"
				echo "[!] Fail, the number of files is more"
				echo "-------------------------------------"
			fi
		fi
	done
}

mainProcess
