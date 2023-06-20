# SplunkCollectorAndForwarder 

This repository contains a collection of PowerShell scripts and a configuration file designed for use with Splunk. Here's a brief rundown of what's included:

1. **Splunk HTTP Collector.ps1:** This PowerShell script uses the REST API to send a POST request to a Splunk server with the HTTP Event Collector service enabled. It sends data formatted in JSON, which Splunk parses.

2. **Splunk Script.ps1:** A PowerShell script that downloads a Splunk Universal Forwarder from a remote server, installs, configures it, and then removes the installation package from the system.

3. **inputs.conf:** The Splunk `inputs.conf` file is modified to collect PowerShell/Operational and Sysmon/Operational logs. It needs to be modified from the `$SPLUNK_HOME/etc/system/local` directory.

## Getting Started

Clone this repository to your local machine to get started.

`git clone https://github.com/secnnet/SplunkCollectorAndForwarder-.git`

## Usage

1. **Splunk HTTP Collector.ps1:** Replace <splunk-server> and <your-token-here> in the script with your Splunk server's address and your HTTP Event Collector token. Run the script to POST data to your Splunk server.

2. **Splunk Script.ps1:** Replace <download-link-for-splunk-forwarder> and <splunk-deployment-server> with the download link for the Splunk Universal Forwarder and your Splunk deployment server's address. Run the script to install and configure the Splunk Universal Forwarder.

3. **inputs.conf:** Replace <your_index_name> with the name of your index. Modify this file from the $SPLUNK_HOME/etc/system/local directory to collect PowerShell/Operational and Sysmon/Operational logs.

# License

This script is released under the [MIT License](LICENSE). Feel free to use and modify it according to your needs.
