#!/bin/bash
myvar=$(ls /etc | wc -l)
echo "number of files present in /etc directory -> $myvar"

