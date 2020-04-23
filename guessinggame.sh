#!/usr/bin/env bash

echo "[New World of Guessing Game]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Negative."
	else
		echo "Positive."
	fi
	ask
done

echo "Great!! This is the right answer, Get your list of files:"
echo "---" && ls -1
