#!/bin/bash

git log master..develop | \
    grep -e "Merge .* into 'develop'" | \
    sed "s/' into 'develop'//" | \
    sed "s/.* Merge branch '//" | \
    sed 's/-/ /g' | \
    sed 's/_/ /g' | \
    sed 's/feature //' | \
    sed 's/bugfix/FIX/' | \
    sed 's/hotfix/HOTFIX/' | \
    sed 's/ *$//g' | \
    uniq -ui | \
    sed 's/^/* /'

