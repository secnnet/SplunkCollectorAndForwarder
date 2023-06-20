# Splunk_HTTP_Collector.ps1

# Splunk HTTP Event Collector endpoint and token
$HECEndpoint = "https://splunk-server:8088"
$HECToken = "your-token-here"

# Sample data to be sent to Splunk
$data = @{
    "event" = @{
        "message" = "Hello, Splunk"
        "severity" = "info"
    }
    "sourcetype" = "_json"
}

# Convert the data to JSON format
$jsonData = $data | ConvertTo-Json

# Headers for the POST request
$headers = @{
    "Authorization" = "Splunk $HECToken"
}

# Make the POST request to Splunk
try {
    Invoke-WebRequest -Uri "$HECEndpoint/services/collector" -Method POST -Body $jsonData -Headers $headers
    Write-Host "Data sent successfully"
} catch {
    Write-Host "Error sending data: $_"
}
