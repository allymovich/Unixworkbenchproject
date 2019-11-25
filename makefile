readme.txt:
	echo "the following are files with there time and dates" >> README.md
readme1.txt:
	ls -lth |cut -d" " -f 6,7,8,9,10,11 >> README.md


readme2.txt:
	echo "these are the number of lines in file guessingame.sh" >> README.md
readme3.txt:README.md
	wc -l guessinggame.sh|cut -d" " -f1 >> README.md
