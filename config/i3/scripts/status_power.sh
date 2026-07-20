#!/bin/bash

i3status | while read line; do
    PROFILE=$(powerprofilesctl get)

    case "$PROFILE" in
        "power-saver") PATH_STATUS="S" ;;
        "performance") PATH_STATUS="P" ;;
        *)             PATH_STATUS="B" ;;
    esac

    echo "$PATH_STATUS | $line"
done
