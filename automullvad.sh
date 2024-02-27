#!/bin/bash
# Author: SeedSnake

# Function to display header information
header_info() {
    clear
    cat <<"EOF"

    ___   __  ____________  __  _____  ____    __ _    _____    ____ 
   /   | / / / /_  __/ __ \/  |/  / / / / /   / /| |  / /   |  / __ \
  / /| |/ / / / / / / / / / /|_/ / / / / /   / / | | / / /| | / / / /
 / ___ / /_/ / / / / /_/ / /  / / /_/ / /___/ /__| |/ / ___ |/ /_/ / 
/_/  |_\____/ /_/  \____/_/  /_/\____/_____/_____/___/_/  |_/_____/  
                                                                     

EOF
}

# Call the header_info function
header_info

# Function to prompt the user for Mullvad server name
prompt_server_name() {
    read -p "Enter the Mullvad server name (e.g., be-bru-wg-101): " SERVER_NAME
}

# Function to create the startup script
create_startup_script() {
    echo "#!/bin/bash" > /etc/init.d/mullvad-start
    echo "# Startup script for Mullvad VPN" >> /etc/init.d/mullvad-start
    echo "wg-quick up $SERVER_NAME" >> /etc/init.d/mullvad-start
    chmod +x /etc/init.d/mullvad-start
}

# Function to create a symlink to rc.local, replacing it if it already exists
create_symlink_rclocal() {
    if [ -e /etc/rc.local ]; then
        rm -f /etc/rc.local
    fi
    ln -s /etc/init.d/mullvad-start /etc/rc.local
    chmod +x /etc/rc.local
}

main() {

    display_ascii

    prompt_server_name

    create_startup_script

    create_symlink_rclocal

    github_link

    echo "Startup script for Mullvad VPN has been created and configured."
    echo "Mullvad VPN will automatically start on reboot using the server '$SERVER_NAME'."
    echo "GitHub Repository: https://github.com/SeedSnake/AutoMullvad"
}


main
