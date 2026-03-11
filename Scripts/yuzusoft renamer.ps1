# 1. Set the target directory
$TargetDir = "C:\Users\hunte\Pictures\Wallpapers\Yuzusoft"
Set-Location $TargetDir

# 2. Get all image files and sort them by the date they were created/modified
$Files = Get-ChildItem -File | 
         Where-Object { $_.Extension -match "jpg|png|jpeg" } | 
         Sort-Object LastWriteTime

$Count = 1
$TotalFiles = $Files.Count

# Determine padding (if > 99 files, use 3 digits; otherwise use 2)
$Padding = if ($TotalFiles -gt 99) { 3 } else { 2 }

Write-Host "Found $TotalFiles files. Starting the Great Renaming..." -ForegroundColor Cyan

# 3. The Renaming Loop
foreach ($File in $Files) {
    # Create the new name (e.g., 001, 002...)
    $NewName = "{0:D$Padding}" -f $Count
    $Extension = $File.Extension
    $FinalName = "$NewName$Extension"
    
    # Only rename if the name is actually different (prevents errors)
    if ($File.Name -ne $FinalName) {
        Write-Host "Renaming: $($File.Name) -> $FinalName" -ForegroundColor Gray
        Rename-Item -Path $File.FullName -NewName $FinalName
    }
    
    $Count++
}

Write-Host "Done! Your screenshots are now in perfect numerical order." -ForegroundColor Green
