#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    cd _site
    lftp -c "open -u $USERNAME,$PASSWORD $DOMAIN; set ssl:verify-certificate no; mirror -R ./ / --ignore-time"
else
    echo "Not deploying, since this branch isn't master."
fi
