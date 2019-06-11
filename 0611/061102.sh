#!/bin/bash

echo $((($(date +'%s') - $(date --date="2019/5/7" +'%s'))/(24 * 60 * 60)))
