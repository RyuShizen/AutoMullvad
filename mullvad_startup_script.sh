#!/bin/bash

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

# Function to create a symlink to rc.local
create_symlink_rclocal() {
    ln -s /etc/init.d/mullvad-start /etc/rc.local
    chmod +x /etc/rc.local
}


main() {

    prompt_server_name


    create_startup_script


    create_symlink_rclocal

    echo "Startup script for Mullvad VPN has been created and configured."
    echo "Mullvad VPN will automatically start on reboot using the server '$SERVER_NAME'."
}


main