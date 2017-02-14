#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    cd _site
    lftp -c "open -u $USERNAME,$PASSWORD homes.fe.up.pt; set ssl:verify-certificate no; mirror -R ./ /public_html --ignore-time"
else
    echo "Not deploying, since this branch isn't master."
fi
