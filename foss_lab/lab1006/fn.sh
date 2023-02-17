#~/bin/bash
function fn()
{
	echo "Sungsoo Yoo"
	echo "cmd" $0 "num:" $# "Arg1:" $1 "Arg2" $2 "Arg3" $3
}

function fadd()
{
	echo $1+$2
	return $#-2
}
