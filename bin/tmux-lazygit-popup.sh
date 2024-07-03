#!/usr/bin/env bash
# Written in [Amber](https://amber-lang.com/)

function exit__23_v0 {
    local code=$1
            exit "${code}"
__AS=$?
}
__0_DEFAULT_WIDTH="90%"
__1_DEFAULT_HEIGHT="90%"
__2_DEFAULT_BORDER="rounded"
function parse_args__26_v0 {
    local args=("${!1}")
    local width="${args[0]}"
    local height="${args[1]}"
    local border="${args[2]}"
    if [ $([ "_${width}" != "_" ]; echo $?) != 0 ]; then
        width="${__0_DEFAULT_WIDTH}"
fi
    if [ $([ "_${height}" != "_" ]; echo $?) != 0 ]; then
        height="${__1_DEFAULT_HEIGHT}"
fi
    if [ $([ "_${border}" != "_" ]; echo $?) != 0 ]; then
        border="${__2_DEFAULT_BORDER}"
fi
    local cmd="lazygit"
    __AMBER_VAL_0=$(tmux display-message -p '#{pane_current_path}');
    __AS=$?;
if [ $__AS != 0 ]; then
        echo "failed to find pwd"
fi;
    local current_path="${__AMBER_VAL_0}"
    __AMBER_ARRAY_0=("${width}" "${height}" "${border}" "${current_path}" "${cmd}");
    __AF_parse_args26_v0=("${__AMBER_ARRAY_0[@]}");
    return 0
}
args=("$@")
            lazygit -v > /dev/null 2>&1
__AS=$?;
if [ $__AS != 0 ]; then
            echo "cannot execute lazygit command. make sure it is installed"
            exit__23_v0 1 > /dev/null 2>&1;
            __AF_exit23_v0__7=$__AF_exit23_v0;
            echo $__AF_exit23_v0__7 > /dev/null 2>&1
fi
            tmux -V > /dev/null 2>&1
__AS=$?;
if [ $__AS != 0 ]; then
            echo "cannot execute tmux command. make sure it is installed"
            exit__23_v0 1 > /dev/null 2>&1;
            __AF_exit23_v0__12=$__AF_exit23_v0;
            echo $__AF_exit23_v0__12 > /dev/null 2>&1
fi
    parse_args__26_v0 args[@];
    __AF_parse_args26_v0__15=("${__AF_parse_args26_v0[@]}");
    params=("${__AF_parse_args26_v0__15[@]}")
    tmux display-popup -E -w ${params[0]} -h ${params[1]} -b ${params[2]} -d ${params[3]} ${params[4]}
__AS=$?;
if [ $__AS != 0 ]; then
        echo "command failed"
fi