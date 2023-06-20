# Splunk-Script.ps1

# Variables
$downloadURL = "https://download-link-for-splunk-forwarder"
$msiPath = "splunkforwarder.msi"
$deploymentServer = "splunk-deployment-server:8089"

# Download Splunk Universal Forwarder
Invoke-WebRequest -Uri $downloadURL -OutFile $msiPath

# Install Splunk Forwarder
Start-Process msiexec.exe -ArgumentList "/i $msiPath AGREETOLICENSE=Yes /quiet" -Wait

# Configure Splunk Forwarder
$SplunkPath = "${env:ProgramFiles}\SplunkUniversalForwarder\bin\splunk.exe"
& $SplunkPath set deploy-poll $deploymentServer --accept-license --no-prompt
& $SplunkPath enable boot-start

# Remove the installation package
Remove-Item $msiPath

# TODO: Add error handling and messaging to a Splunk HTTP Event Collector.
