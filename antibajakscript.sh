#!/bin/sh

function activeAntiBajak() {
    sleep 1s;
    
    activeWindow=$(getActiveWindow);

    if [ "$activeWindow" = "Slack" ] || [ $activeWindow = "DingTalk" ]; then
        pmset displaysleepnow
    else
        $(activeAntiBajak)
    fi
}