#!/bin/bash

echo $((($(date --date= +'%s') - $(date --date="2019/5/7" +'%s'))/(24 * 60 * 60)))
