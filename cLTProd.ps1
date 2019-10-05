$channel_access_token = "Your Channel Access ID"
$liffId = "Your LIFF App ID"

$body = @{
	   name = "Give some name"; 
	   liffId = $liffId 
	} | ConvertTo-Json 

$body = [System.Text.Encoding]::UTF8.GetBytes($body)

$response = Invoke-WebRequest  -Method POST https://api.line.me/things/v1/trial/products -Headers @{
		"Authorization" = "Bearer " + $channel_access_token;"Content-Type" = "application/json“	} -Body $body

$response.Content
