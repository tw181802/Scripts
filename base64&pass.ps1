function Encode-Base64 {
    param(
        [string]$InputString
    )
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($InputString)
    $encoded = [Convert]::ToBase64String($bytes)
    return $encoded
}

function Decode-Base64 {
    param(
        [string]$Base64String
    )
    $bytes = [Convert]::FromBase64String($Base64String)
    $decoded = [System.Text.Encoding]::UTF8.GetString($bytes)
    return $decoded
}

function Generate-RandomPassword {
    param(
        [int]$Length = 12
    )

    $charset = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}|;:,.<>?'
    $random = New-Object System.Random
    $password = -join ((1..$Length) | ForEach-Object { $charset[$random.Next($charset.Length)] })
    return $password
}

# Main script logic to allow user input
Write-Host "Choose an option:"
Write-Host "1. Encode a string to Base64"
Write-Host "2. Decode a Base64 string"
Write-Host "3. Generate a random password"
$userChoice = Read-Host "Enter the number of your choice"

switch ($userChoice) {
    '1' {
        # Ask user for input string to encode
        $inputString = Read-Host "Enter the string to encode"
        $encodedString = Encode-Base64 -InputString $inputString
        Write-Host "Encoded String: $encodedString"
        break
    }
    '2' {
        # Ask user for Base64 string to decode
        $base64String = Read-Host "Enter the Base64 string to decode"
        $decodedString = Decode-Base64 -Base64String $base64String
        Write-Host "Decoded String: $decodedString"
        break
    }
    '3' {
        # Ask user for desired password length
        $length = Read-Host "Enter desired password length (default is 12)"
        if (-not $length) { $length = 12 }  # Use default length if user doesn't input anything
        $password = Generate-RandomPassword -Length $length
        Write-Host "Generated Password: $password"
        break
    }
    default {
        Write-Host "Invalid choice, please try again."
        break
    }
}
