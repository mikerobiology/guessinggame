#!/usr/bin/env bash
# File: guessinggame.sh

numbfiles=$(ls -p | grep -v / | wc -l)

function partystarted {
	echo -n "I know how many files are in this directory.  Do you?  Guess the number:"
}

function partyover {
	echo "That's correct! There are $numbfiles files in this directory. Ending program."
}

partystarted

while read guess
	do
		if [[ $guess -eq $numbfiles ]]
			then
				break;
			else
				if [[ $guess -gt $numbfiles ]]; then
					echo -n "Too high.  Guess again:"
				elif [[ $guess -lt $numbfiles ]]; then
					echo -n "Too low.  Guess again:"
				fi
			fi
	done

partyover
