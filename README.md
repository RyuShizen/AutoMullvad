# AutoMullvad
This shell script automates the process of configuring and launching Mullvad VPN on reboot of your LXC container. It prompts the user to enter the Mullvad server name, creates a startup script, sets appropriate permissions, and creates a symlink for automatic execution on startup.

How to Use:

## Option 1: Direct Execution
Using Bash Command:

Open a terminal in your LXC container.

Execute the following command, replacing <URL_of_your_script_raw> with the Raw URL of your script hosted on GitHub:

```bash
bash -c "$(curl -fsSL <URL_of_your_script_raw>)"
```
Follow the prompts to enter the Mullvad server name when prompted.

Once the script completes execution, Mullvad VPN will be configured to start automatically on reboot, using the specified server.

## Option 2: Manual Execution
Step-by-Step Execution:

Clone this repository to your LXC container.

```bash
git clone <repository_url>
```
Navigate to the directory containing the script.

```bash
cd <repository_directory>
```
Execute the script using the following command:

```bash
sudo bash automullvad.sh
```
Enter the Mullvad server name when prompted.

Once the script completes execution, Mullvad VPN will be configured to start automatically on reboot, using the specified server.

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.


