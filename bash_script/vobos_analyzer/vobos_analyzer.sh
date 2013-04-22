#!/bash/sh
# 
# $1 = input file name
# $2 = output file name
#if [ -z "$1" ]; then
#	echo usage "$0" input_file output_file
#	exit
#elif [ -z "$2" ]; then
#	echo [ERROR] "$0" input_file output_file
#	exit
if [ $# -ne 2 ]; then
	echo USAGE : "$0" input_file output_file

fi


