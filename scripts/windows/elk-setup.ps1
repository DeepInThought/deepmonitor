# Installing ELK Beats on Windows Server 2012 R2

# Pause
Function Pause {
    Write-Host -NoNewLine "Press any key to continue... `n"
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    }
    
    # Installing beats
    Write-Host "Installing beats..."
    
    Write-Host "Installing filebeat..."
    PowerShell.exe -ExecutionPolicy UnRestricted -File c:\Beats\filebeat\.\install-service-filebeat.ps1
    
    Write-Host "Installing topbeat..."
    PowerShell.exe -ExecutionPolicy UnRestricted -File c:\Beats\topbeat\.\install-service-topbeat.ps1
    
    # WinPcap Required for packetbeat
    Write-Host "Installing WinPcap (Required for packetbeat)..."
    c:\Beats\WinPcap_4_1_3.exe
    
    Pause
    
    Write-Host "Installing packetbeat..."
    PowerShell.exe -ExecutionPolicy UnRestricted -File c:\Beats\packetbeat\.\install-service-packetbeat.ps1
    Write-Host "Installing winlogbeat..."
    PowerShell.exe -ExecutionPolicy UnRestricted -File c:\Beats\winlogbeat\.\install-service-winlogbeat.ps1
    
    # Verify all of the services are now running
    Write-Host "Verify all of the services are now running and start them if not..."
    services.msc
    
    Write-Host " "
    Write-Host "Install complete."
    
    Pause