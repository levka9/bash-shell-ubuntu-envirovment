#!/bin/bash

get_lower_string(){
    echo $1 | tr '[:upper:]' '[:lower:]'
}

# remove all end lines from a string
remove_endline(){
    echo "$1" | tr '\n' ' '
    #echo "$1" | xargs #alternative method to remove end line
}

# return 0 if string contain and 1 if not
is_contain_string(){
    local string="$1"
    local substring="$2"

    if [[ $string == *"$substring"* ]]; then
        return 0
    else
        return 1
    fi    
}