param(
    [string]$ProjectName
)

if ([string]::IsNullOrWhiteSpace($ProjectName)) {
    Write-Host "ERROR: Project name is required."
    exit 1
}

Write-Host "Checking project: $ProjectName"