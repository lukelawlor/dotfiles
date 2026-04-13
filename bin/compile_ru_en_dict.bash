#!/usr/bin/env bash

# files used:
# re: russian to english dictionary
# er: english to russian dictionary
# d: output dictionary

cat re er \
    | sed $(/usr/bin/printf "s/\(.\)\u0301/%s/g" "\u\1") \
    | sed 's/ \/.*\/ / /' >d
# 1st sed: convert accented vowels into capital vowels
# 2nd sed: remove IPA

# output the line number of d where the english to russian part starts
echo $[$(cat re | wc -l)+1]
