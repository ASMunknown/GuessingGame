README.md:guessinggame.sh
	touch README.md
	echo "# GuessingGame project" >> README.md
	echo " " >> README.md
	echo "This project it's about a game that you can play in your shell." >> README.md
	echo " " >> README.md
	echo "About the date" >> README.md
	echo "=====" >> README.md
	echo " " >> README.md
	printf "Generate at: " >> README.md
	date >> README.md
	echo " " >> README.md
	echo "About the code" >> README.md
	echo "=====" >> README.md
	printf "The number of lines in the script are: " >> README.md
	wc guessinggame.sh -l | cut -d" " -f1 >> README.md
