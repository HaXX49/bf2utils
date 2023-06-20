#!/bin/bash

# Env
export BF2_PATH="${HOME}/.local/share/Steam/steamapps/common/Star Wars Battlefront II Classic"
COMMAND=$1

# main
mkdir -p "${BF2_PATH}/GameData/backup"

case $COMMAND in

    list)
        echo Enabled
        echo "-------"
        /bin/ls -l "${BF2_PATH}/GameData/addon"
        echo
        echo Disabled
        echo "-------"
        /bin/ls -l "${BF2_PATH}/GameData/backup"
        ;;

    enable)
        MODNAME=$2
        echo "Enabled $MODNAME !"
        ;;

    disable)
        MODNAME=$2
        echo "Disabled $MODNAME !"
        ;;

esac