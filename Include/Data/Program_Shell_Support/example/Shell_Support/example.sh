#!/bin/sh
##BEGIN_INTRODUCTION##	This function does not got an introduction yet.
##END_INTRODUCTION##


#####################  Build in Things   ######################
File_Path=$0
File_Name=${File_Path##*/};
Program_Name=${File_Name%.*};
Call_Path=$(pwd)
Here_Path=$(dirname $(readlink -f $0))

echo_introduction() #Introduce myself
{
	if [ -n "$1" ];then
	FILE_Content=$(cat < $1)
	else
	FILE_Content=$(cat < $Here_Path/$File_Name)
	fi
	INTRO=${FILE_Content#*##BEGIN_INTRODUCTION##};
	INTRO=${INTRO%%##END_INTRODUCTION##*};
	echo "$INTRO"
}

echo_help() #Echo my help or others'
{
	if [ -n "$1" ];then
		FILE_Content=$(cat < $1)
	else
		FILE_Content=$(cat < $Here_Path/$File_Name)
	fi
	HELP=${FILE_Content##*##BEGIN_HELP##};
	HELP=${HELP%##END_HELP##*};
	echo "usage:  $Program_Name [options values]"
	echo options:"$HELP"---------------------By ZhaoYong-----------------
}

##################### other functions below ######################

Save2CompleteFile()
{
	echo $* >> $Here_Path/$Program_Name.comp
}

Save2History()
{
	Save2CompleteFile $*;
	echo "------------------"$(date)------------------ >> $Here_Path/history.txt
	echo "$Program_Name $*">>$Here_Path/history.txt
}

######################  main below  #######################
if [ -n "$1" ];then
	while [ -n "$1" ]; do
	case $1 in
##BEGIN_HELP##
		( -h | -help | --h* ) shift 1;echo_help;exit 1;; #[-h]Show usages 
		( -i | intro* ) shift 1;echo_introduction;exit 1;; #[-i]Show introduction
		-edit|edit) shift 1;gedit $Here_Path/$File_Name;exit 1;; #[-edit]edit this function
		-history) shift 1;more $Here_Path/history.txt;exit 1;; #[-edit]edit this function
		# -*) echo "error: no such option $1. -h for help";exit 1;; # 
		*)  Save2History $*;"$Call_Path/$Program_Name" $*;exit 1;; #call function here
##END_HELP##
	esac
	done
else
	"$Call_Path/$Program_Name" $*; #call function here
fi
echo ----------------------------------------------------


