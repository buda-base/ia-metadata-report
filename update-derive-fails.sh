#!/usr/bin/env bash

# Get the up to date list of derive failures
# You have to be TimB-BDRC in ia to get meaningful data
# Run this sparingly
ftnow=$(date +%Y-%m-%d_%H-%M-%S)
ia tasks --red-rows | cut -f1 | sed -re 's/bdrc-(.*)/\1/g' | sort > "${ftnow}".derivedfailed.lst
