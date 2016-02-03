#!/usr/bin/env bash

NUM_WORDS = "$1"
FILE ="$2"
echo "The top $1 words are:"
cat $2 | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c |sort -nr | head -n $1

echo "The bottom $1 words are:"
cat $2 | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c |sort -nr | tail -n $1  
