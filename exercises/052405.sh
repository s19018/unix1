#!/bin/bash

directory=$1
echo $(find $directory -type f | wc -l)
echo $(find $directory -type d | wc -l)
