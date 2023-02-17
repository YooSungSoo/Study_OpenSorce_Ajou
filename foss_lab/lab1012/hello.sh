#! /bin/bash
NAME="Sungsoo Yoo"
echo $NAME
echo $# : $0 : $1 : $2 : $3
function fadd()
{
	echo $(($1+$2))
	return 100
}
