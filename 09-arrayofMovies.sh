#!/bin/bash

MOVIES=("arya" "bunny" "bahubali")

TIMESTAMP=$(date)
echo timestamp is : $TIMESTAMP

echo " first movie name: $MOVIE[0]"
echo " second movie name: $MOVIE[1]"
echo " third movie name: $MOVIE[2]"

echo "all movies names: ${MOVIES[@]}"
