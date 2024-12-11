#Arithmetic
$a = 5
$b = 10
$sum = $a + $b
Write-Output $sum


#Functions
function Add($a, $b) {
    return $a + $b
}

Write-Output (Add 5 10)


#Conditionals If-Else
$number = 10
if ($number -gt 5) {
    Write-Output "Greater than 5"
} else {
    Write-Output "5 or less"
}


#Loops
for ($i = 0; $i -lt 5; $i++) {
    Write-Output $i
}

#Data Structures

$numbers = 1, 2, 3, 4, 5
foreach ($number in $numbers) {
    Write-Output $number
}

# port scanner

# Clear the screen
Clear-Host

# Ask for input: the target host to scan
$remoteServer = Read-Host "Enter a remote host to scan"

# Resolve the IP address of the remote server
$remoteServerIP = [System.Net.Dns]::GetHostAddresses($remoteServer)[0].ToString()

# Print a nice banner with information on which host we're about to scan
Write-Host ("*" * 60)
Write-Host "Please wait, scanning remote host $remoteServerIP"
Write-Host ("*" * 60)

# Get the current time to calculate how long the scan takes
$t1 = Get-Date

# Scan ports 1 to 1024
for ($port = 1; $port -le 1024; $port++) {
    try {
        # Attempt to connect to the port
        $tcpConnection = Test-NetConnection -ComputerName $remoteServerIP -Port $port -WarningAction SilentlyContinue
        
        # If the port is open, print the result
        if ($tcpConnection.TcpTestSucceeded) {
            Write-Host "Port $port: Open"
        }
    }
    catch {
        Write-Host "Error scanning port $port"
    }
}

# Get the time again to see how long the scan took
$t2 = Get-Date

# Calculate the time difference
$total = $t2 - $t1

# Print the total time for the scan
Write-Host ("*" * 60)
Write-Host "Scanning Completed in: $total"
Write-Host ("*" * 60)

