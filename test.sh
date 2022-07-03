#!/bin/bash
clear 

is_bool(){
	if $1; then
		echo "true"
		return 0
	else
		echo "false"
		return 1
	fi
}

# is_bool true
# is_bool false

# echo "$(is_bool true)=" $?
# echo "$(is_bool false)=" $?

# if is_bool true; then
# 	echo "true ok"
# fi
is_bool true
is_bool_ret=$?
echo "is_bool_ret="$?

if [[ $is_bool_ret == 1 ]]; then
	echo "is_bool_ret="$is_bool_ret
fi

# string array
PACKAGES=("app1" "app2" "--classic app3" "app4")

for pkg in "${PACKAGES[@]}"
do
	echo "pgk=" $pkg
done