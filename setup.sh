#!/bin/sh

echo '

                          /$$                                      /$$      
                         | $$                                     | $$      
     /$$$$$$$  /$$$$$$  /$$$$$$   /$$   /$$  /$$$$$$      /$$$$$$$| $$$$$$$ 
    /$$_____/ /$$__  $$|_  $$_/  | $$  | $$ /$$__  $$    /$$_____/| $$__  $$
   |  $$$$$$ | $$$$$$$$  | $$    | $$  | $$| $$  \ $$   |  $$$$$$ | $$  \ $$
    \____  $$| $$_____/  | $$ /$$| $$  | $$| $$  | $$    \____  $$| $$  | $$
    /$$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$/| $$$$$$$//$$ /$$$$$$$/| $$  | $$
   |_______/  \_______/   \___/   \______/ | $$____/|__/|_______/ |__/  |__/
                                           | $$                             
                                           | $$                             
                                           |__/

   *** This is My Emacs setup script ***

   1. Download https://github.com/shunk031/emacs.d.git
   2. Symlinking "emacs.d" to your home directory
   
'

# Prepare some functions

# To input "yes" or "no" to the user
askYesOrNo() {
    while true ; do
	read -p "$1 (y/n)? " answer
	case $answer in
	    [yY] | [yY]es | YES )
		return 0;;
	    [nN] | [nN]o | NO )
		return 1;;
	    * ) echo "Please answer yes or no.";;
	esac
    done
}



# Create symbolic link to home directory
ln -sfn ~/emacs.d ~/.emacs.d
echo "Created symbolic link of .emacs.d to home directory"



# Setup GFM preview environment
askYesOrNo "Are you sure you want to setup GFM preview environment?"
if [ $? -eq 0 ]; then
    
    sudo ln -sfn ~/emacs.d/etc/markdown /bin/markdown
    echo "Created symbolic link of markdown to /bin/markdown"
    
    sudo chmod +x /bin/markdown
    echo "You can run GFM preview script!"
    
else
    echo "Setting up GFM preview environment has been canceled."
fi
