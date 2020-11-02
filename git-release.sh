#!/bin/bash

git log master..develop | \
    grep Merge | \
    grep "into 'develop'" | \
    sed "s/' into 'develop'//" | \
    sed "s/.* Merge branch '//" | \
    sed 's/-/ /g' | \
    sed 's/feature //' | \
    uniq | \
    sed 's/bugfix/FIX/' | \
    sed 's/hotfix/HOTFIX/' | \
    sed 's/_/ /g' | \
    sed 's/^/* /'

