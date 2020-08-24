#! /bin/bash

cli_package="$TMPDIR/AWSCLIV2.pkg"

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o $cli_package

sudo installer -pkg $cli_package -target /