#!/bin/bash

ret_value=""

get_snap_package_info(){
    echo $(sudo snap info $1)
}

# return 1 if package is installed and -1 if not
is_snap_package_exists(){
    local pkg=$1
    local package_result=$(get_snap_package_info "$pkg" 2>&1)
    #echo package_result=$package_result #debug mode
    local clear_package_result=$(remove_endline "$package_result")
    #echo $clear_package_result #debug mode
    local lower_clear_package_result=$(get_lower_string "$clear_package_result")
    #echo $lower_clear_package_result #debug mode

    is_contain_string "$lower_clear_package_result" "installed:"
    local is_package_exists=$?
    #echo "in_span:is_package_exists="$is_package_exists
    ret_value=$is_package_exists
}

# return 1 if package is installed and -1 if not
is_dpkg_package_exists(){
    local pkg="$1"
    local dpkg_package_status
    local lower_clear_package_result
    local is_package_exists
    
    dpkg_package_status="$(dpkg-query -W -f='${Status} ${Version}\n' "$1" 2>&1)"
    lower_clear_package_result=$(get_lower_string "$dpkg_package_status")
    #echo "$lower_clear_package_result" #debug mode
    
    is_contain_string "$lower_clear_package_result" "installed"
    is_package_exists=$?
    #echo "is_package_exists="$is_package_exists
    ret_value=$is_package_exists
}

# if package exists it's return 0(true) if not return 1(false)
is_package_exists(){
    local package_name="$1"

    is_snap_package_exists "$1"
    local is_snap_package_exists_ret=$ret_value

    is_dpkg_package_exists "$1"
    local is_dpkg_package_exists_ret=$ret_value
    
    #echo "is_snap_package_exists_ret="$is_snap_package_exists_ret #debugger
    #echo "is_dpkg_package_exists_ret="$is_dpkg_package_exists_ret #debugger

    if [[ "$is_dpkg_package_exists_ret" == "0" || "$is_snap_package_exists_ret" == "0" ]]; then
        #echo "$package_name installed" #debug mode
        ret_value=0
    else
        ret_value=1 
    fi
}
