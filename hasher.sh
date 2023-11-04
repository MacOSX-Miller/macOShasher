#!/bin/bash
#takes a CLI arg and sends the string to paste buffer

if [ ! -z "$1" ]
then
	hash=$1
	printf $hash | shasum -a 256 | cut -d " " -f1 | tr -d "\n" | pbcopy 
else
	printf "enter an argument to hash on the cli (after the name of the script)"

fi
