#!/bin/bash

SCRIPTDIR="`dirname $0`"

IFS=$'\n' read -d '' -r -a people < "`dirname $0`/people.txt"
IFS=$'\n' read -d '' -r -a insults < "`dirname $0`/insults.txt"

RANDOMINDEX1=$( jot -r 1  0 $((${#people[@]} - 1)) )
RANDOMINDEX2=$( jot -r 1  0 $((${#insults[@]} - 1)) )

person=${people[$RANDOMINDEX1]}
insult=${insults[RANDOMINDEX2]}

echo "$person $insult."
