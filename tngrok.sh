#!/bash/bash
# Source code by https://github.com/gr33pp/
# Install dependencies
clear
echo "Installing/ updating dependencies"
pkg install wget tar
clear
while true; do
  echo "  _______                          __       "  
  echo " |_     _|.-----.-----.----.-----.|  |--.   "
  echo "   |   |  |     |  _  |   _|  _  ||    <    "
  echo "   |___|  |__|__|___  |__| |_____||__|__|   "
  echo "                |_____|           By gr33pp "
  echo " "
# Conclude if device is arm64 or arm 
  echo "Choose device architecture"
    echo "1> arm"
    echo "2> arm64"
    echo "3> Update Auth-token"
    echo "4> exit"
    read -p "> " opti
    case $opti in
      1)
          cd
          echo "Installing Ngrok for your device architecture (arm)."
          wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.tgz
          tar xf ngrok-v3-stable-linux-arm.tgz -C ../usr/bin
          rm -rf ngrok-v3-stable-linux-arm.tgz
          clear
          echo -e "\e[32mInstalled Successfully!!\e[0m"
          echo -e "\e[32mInstalled Successfully!!\e[0m"
          echo " "
          ;;
      2)
          cd
          echo "Installing Ngrok for your device architecture (arm64)."
          wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
          tar xf ngrok-v3-stable-linux-arm64.tgz -C ../usr/bin
          rm -rf ngrok-v3-stable-linux-arm64.tgz
          clear
          echo -e "\e[32mInstalled Successfully!!\e[0m"
          echo -e "\e[32mInstalled Successfully!!\e[0m"
          echo " "
          ;;
      3)
          clear
          read -p "Enter Authtoken: " authtoken
          ngrok config add-authtoken $authtoken
          clear
          echo -e "\e[32mAuthtoken updated successfully!!\e[0m"
          echo -e "\e[32mAuthtoken updated successfully!!\e[0m"
          echo " "
          ;;
      4)
          echo "Exiting gr33pp Tngrok."
          exit 0
          ;;
      *)
          echo "Invalid choice. Please try again..
          sleep 2
          clear
          ;;
    esac
done
