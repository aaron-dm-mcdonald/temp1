#!/bin/bash


sudo apt update && sudo apt upgrade -y
echo "Updated packages"

# ------------------------------------------

# Function for error handling
handle_errors() {
  # Initialize an error counter
  local error_count=0

  # Function to increment the error counter
  increment_error() {
    let "error_count++"
  }

  # Trap any errors and call the increment_error function
  trap 'increment_error' ERR

  # Return the error count
  echo $error_count
}

# Call the error handling function and capture the error count
error_count=$(handle_errors)



# ------------------------------------------

#git install
sudo apt-get install -y git-all

#commands for downloading install
sudo apt install -y curl

#chrome install sequence 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f

#chromium install 
sudo snap install chromium

#linux alt for notepad++, a KDE adv text editor
sudo snap install kate --classic

# Install Firefox
sudo snap install firefox

# Install Brave Browser
sudo snap install brave

# Install VS Code
sudo snap install code --classic

# Install WhatsApp
sudo snap install whatsapp-linux-app

# Install Discord
sudo snap install discord

# for pdfs and other docs
sudo snap install okular

# zoom install
sudo snap install zoom-client

# Install FB Messenger
sudo snap install fbmessenger

# Uncomment if timeshift isnt default installed (like Ubuntu)
# Classic Device Manager
# sudo snap install gnome-system-monitor --classic

# Uncomment if timeshift isnt default installed (like Ubuntu)
#sudo snap install timeshift

# Image Editor
sudo snap install gimp

# VLC multimedia player
sudo snap install vlc

# Partition manager 
sudo snap install gparted

# 7zip compression tool install
sudo apt install -y p7zip-full p7zip-rar

# ------------------------------------------


# Redirect stdout (standard output) and stderr (standard error) to a log file
exec > >(tee -a install.log) 2>&1

# ------------------------------------------

# Check if there were any errors
if [ $error_count -eq 0 ]; then
  # Clear the terminal
  clear
  # Display the success message
  echo "Script was successful"
else
  echo "Script completed with $error_count errors."
fi

# ------------------------------------------