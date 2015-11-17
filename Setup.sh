Function_Path=$Function_Top/functions
export Function_Data_Path=$Function_Top/Data
. $Function_Data_Path/MyAlias.sh
. $Function_Top/Include/function_name_complete

#Program Shell Support
if [ -f "$Function_Data_Path/Program_Shell_Support/Setup.sh" ]; then
	source "$Function_Data_Path/Program_Shell_Support/Setup.sh"
fi

#Makefile Support
if [ -f "$Function_Data_Path/Makefile_Setup.sh" ]; then
	source "$Function_Data_Path/Makefile_Setup.sh"
fi
