#!/bin/bash

# Copyright: (C) 2017 iCub Facility - Istituto Italiano di Tecnologia
# Authors: Ugo Pattacini <ugo.pattacini@iit.it>
# CopyPolicy: Released under the terms of the GNU GPL v3.0.
#
# The env variable GITHUB_TOKEN_VVV_SCHOOL shall contain a valid GitHub token
# (refer to instructions to find out more)
#

if [ $# -lt 2 ]; then
    echo "Usage: $0 <org> <repo-prefix>"
    echo "Example: $0 vvv-school application_vvv18"
    exit 1
fi

if [ -z "$GITHUB_TOKEN_VVV_SCHOOL" ]; then
    echo -e "${red}env variable GITHUB_TOKEN_VVV_SCHOOL is not set${data}${nc}\n"
    exit 2
fi

# color codes
green='\033[1;32m'
nc='\033[0m'

if [ -d $2 ]; then
    rm -Rf $2
fi

repositories=$(./get-repositories.rb $1)
for repo in ${repositories[@]}; do
    if [[ $repo == $2* ]]; then
        echo -e "\n${green}Downloading $repo${nc}"
        git clone https://github.com/$1/$repo.git $2/$repo
    fi
done
