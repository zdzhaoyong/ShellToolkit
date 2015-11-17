#!/bin/bash

Program_Complete() 
{
    COMPREPLY=()
    local cur=${COMP_WORDS[COMP_CWORD]}; #当前命令最后一组词
    local com=${COMP_WORDS[COMP_CWORD-1]}; #当前命令前一个词
	#echo "$com in $Complete_List?"
    for test_str in $Complete_List;do
	if [ $com = $test_str ];then
		 Exist_Value="Exist"
	fi
    done
	Complete_File_Path="$com"_Shell_Support_Path
	Complete_File_Path=${!Complete_File_Path}
	Complete_File=$Complete_File_Path/$com.comp
	if [ -f "$Complete_File" ]; then
		Lists_=$(cat $Complete_File) 
		COMPREPLY=($(compgen -W "$Lists_" -- $cur))
	else
		COMPREPLY=($(compgen -W "$Lists_" -- $cur))
	fi
}
#include Path,File,and Lists in CompleteFile
complete -df -F Program_Complete $Program_Name

