#! /bin/bash

cli_package="$TMPDIR/AWSCLIV2.pkg"

if which aws &> /dev/null
then
    echo "aws-cli already installed... ✅"
else
    printf "Installing aws-cli..."
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o $cli_package &> /dev/null
    sudo installer -pkg $cli_package -target / &> /dev/null
    echo "✅"
fi

