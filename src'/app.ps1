
$url = "http://localhost:7180/rest/api/content"
$auth = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes("admin:admin"))
$headers = @{
    'Authorization' = "Basic $auth"
}

$res = Invoke-RestMethod -Method 'GET' -URI $url -Headers $headers
$res

