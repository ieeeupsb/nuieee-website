#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    cd _site
    git init

    git remote add deploy "nuieee@pinguim.fe.up.pt:/usr/users1/biblioteca/nuieee"
    git config user.name "NuIEEE Travis CI"
    git config user.email "nuieee@fe.up.pt"

    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master."
fi
