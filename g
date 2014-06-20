#!/bin/bash

function _status {
	echo

	echo -e "\e[0;33m> git status\e[0m"
	echo
	git status

	echo
}

function _pull {
	echo

	echo -e "\e[0;33m> git pull origin master\e[0m"
	echo
	git pull origin master

	echo
}


function _send {

	_status
	
	if [ -z "`git status --porcelain`" ]
		then
			echo -e "\e[0;31m Nothing to commit.\e[0m"
			echo
			exit
	fi


	echo -e "\e[0;32m Going to ADD all, COMMIT and PUSH.\e[0m"
	echo -e "\e[0;32m Enter commit message (leave blank to abort).\e[0m"
	echo
	echo -n -e "\e[1;36m [msg]: \e[0m"
	read msg
	echo

	if [ -z "$msg" ]
		then
			echo -e "\e[0;31m Aborted.\e[0m"
			echo
			exit
	fi

	echo -e "\e[0;33m> git add --all\e[0m"
	echo
	git add --all
	echo

	echo -e "\e[0;33m> git commit -m \"$msg\"\e[0m"
	echo
	git commit -m "$msg"
	echo

	echo -e "\e[0;33m> git push origin master\e[0m"
	echo
	git push origin master
	echo
}


case $1 in
		"check" | "status")
			_status
			;;

		"pull")
			_pull
			;;
			
		"send" | "push")
			_send
			;;

		*)
			echo -e "\n\e[0;31m Invalid ACTION '$1', use one of {check, pull, send} !\e[0m\n";
			;;

	esac
