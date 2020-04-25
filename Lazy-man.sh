#!/bin/bash
LS="/"

function LIST()
{
    echo "$(tput setaf 6)
    list of folders and file in home dir
    $(tput setaf 2)"
    ls $LS
}
function EXE()
{
    echo "$(tput setaf 6)
    Select a file to execute
    "
    read STORE
    chmod +x *
    sudo $LS./$STORE
}
function NAV()
{
    echo "$(tput setaf 6)
    enter the dir
    "
    read DIR
    cd ${LS}${DIR}/
    LS="${LS}${DIR}/"
    LIST
}
function COPY()
{
    echo "$(tput setaf 6)enter the filename or folder"
    read NAME
    echo "location to copy"
    read LOCA
    sudo cp -v -r -p $NAME $LOCA
}
function MOVE()
{
    echo "$(tput setaf 6)enter the filename or folder"
    read NAME_MOV
    echo "location to copy"
    read LOCA_MOV
    sudo mv -v $NAME_MOV $LOCA_MOV
}
function DEL()
{
    echo "$(tput setaf 6)enter the file or folder name"
    read DEL_NAME
    sudo rm -rfI ${LS}${DEL_NAME}
}
function PRINT_WD()
{
    pwd
}
function INTRO()
{
echo "$(tput setaf 6)

(1)SHOW FILES (2)G0T0 (3)EXECUTE (4)CUT (5)COPY  (6)DELETE (7)PRINT_WORKING_DIR
"
echo "$(tput setaf 1)(ctrl+Z)EXIT$(tput setaf 6)"
read DEC

if [ $DEC = 1 ];
then
    LIST
elif [ $DEC = 2 ];
then
    NAV
elif [ $DEC = 3 ];
then
    EXE
    elif [ $DEC = 4 ];
then
    MOVE
elif [ $DEC = 5 ];
then
    COPY
elif [ $DEC = 6 ];
then
    DEL
elif [ $DEC = 7 ];
then
    PRINT_WD
else
echo "$(tput bel)$(tput setaf 1)Something went wrong"
fi 
}

echo "$(tput setaf 6)$(tput clear)_________________________
< WELCOME TO FILE-MANAGER >
 -------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

"
echo "$(tput smul)$(tput bold)$(tput dim)SELECT AN OPTION
$(tput rmul)
"

STRT1="1"
STRT2="2"
while [ $STRT1 != $STRT2 ]; do
INTRO
done
