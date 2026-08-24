param(
    [string]$ProjectName
)

if ([string]::IsNullOrWhiteSpace($ProjectName)) {
    Write-Host "ERROR: Project name is required."
    exit 1
}

function Run-TerraformChecks {
    terraform fmt -check

    if ($LASTEXITCODE -ne 0) {
        Write-Host "FAILED: terraform fmt check failed."
        exit 1
    }

    terraform validate

    if ($LASTEXITCODE -ne 0) {
        Write-Host "FAILED: terraform validate failed."
        exit 1
    }

    Write-Host "SUCCESS"
}

Write-Host "Checking project: $ProjectName"

Run-TerraformChecks

Write-Host "$ProjectName CI Checks completed successfully."
