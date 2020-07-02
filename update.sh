read -p '==> ⬆️ Do you want to check for updates and install them? (y/N) ' $response

if [ "$response" == "y" ]
then
  softwareupdate -i -a &> /dev/null 
else
  echo "Ok, bye! 👋🏽"
fi
