#!/usr/bin/env bash

echo "Hello! Welcome to this game"
echo "First, tell me your name please" 
read name

#Finding the correct answer.
answer=$(ls | wc -l)

# If win is 0, the gamen still not win.
win=0
while [[ win -eq 0 ]] 
do
	echo "Guess!, how many files are in the current directory?"
	read userAnswer

	if [[ $userAnswer -eq $answer ]]
	then
		echo "!!!Contratulations $name, you WIN!!!"
		let win=$win+1
	else
		if [[ $userAnswer -gt $answer ]]
		then
			echo "[!] Fail, the number of files is less"
		else
			echo "[!] Fail, the number of files is more"
		fi
	fi
done
