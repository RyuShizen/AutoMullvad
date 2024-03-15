# AutoMullvad

This shell script automates the process of configuring and launching Mullvad VPN on reboot of your Linux system based on Debian (such as Debian and Ubuntu). It prompts the user to enter the Mullvad server name, creates a startup script, sets appropriate permissions, and creates a symlink for automatic execution on startup. 

Your Mullvad VPN will now start automatically on the specified server at every reboot of your Linux system, whether it's your OS, a VM, or an LXC container.

How to Use:

## Option 1: Direct Execution
Using Bash Command:

Open a terminal in your LXC container.

Execute the following command

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/SeedSnake/AutoMullvad/main/automullvad.sh)"
```
Follow the prompts to enter the Mullvad server name when prompted.

Once the script completes execution, Mullvad VPN will be configured to start automatically on reboot, using the specified server.

## Option 2: Manual Execution
Step-by-Step Execution:

Clone this repository to your LXC container.

```bash
git clone https://github.com/SeedSnake/AutoMullvad.git
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

## License

AutoMullvad is distributed under the MIT License. For more information, see the `LICENSE` file in the project repository.
