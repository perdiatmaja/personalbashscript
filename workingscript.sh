#!/bin/sh

getCase (){
    case "$1" in
        i)
        echo "improvement";;
        b)
        echo "bugfix";;
        f)
        echo "feature";;
    esac
}

yamete () { git checkout -b "$(getCase $1)"/SAND2"-""$2"; }
kimochi () { git checkout "$(getCase $1)"/SAND2"-""$2"; }
senpai () {git checkout release/"$1"}
aishiteru () {git commit -m "$1";}

alias dameeee="git reset --hard";
alias c="clear";
alias minyakUrut="git pull";
alias ahShitHereWeGoAgain="git checkout develop";
alias tehTarik="git fetch";

if [ $PWD = '/Users/'$(whoami) ]
then
    echo "Back to work?"
    read yn
    case $yn in
        y|Y|yes|YES)
        cd ~/Documents/Project/Android/skywalker_artoodetoo_android/;;
    esac
fi

$STOP_CHECK=false

getActiveWindow() {
    echo $(python "$CUSTOM_SCRIPT_PATH/activeWindowObserver.py" 2>&1 > /dev/null)
}

check() {
    sleep 0s;
    if [ $(getActiveWindow) = 'Slack' ]
    then
        pmset displaysleepnow
    else
        $(check)
    fi
}