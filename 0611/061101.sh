#!/bin/bash

echo $((($(date --date="2019/9/1" +'%s') - $(date --date= +'%s'))/ 86400))

