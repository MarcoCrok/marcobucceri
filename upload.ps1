# PowerShell Script for Deploying Hugo to GitHub Pages

# Set variables
$sourcePath = "C:\Users\Marco\OneDrive\Documents\Obsidian Vault\Posts"
$destinationPath = "C:\Users\Marco\marcobucceri\public\posts"
$myrepo = "https://github.com/MarcoCrok/marcobucceri.git"

# Set error handling
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

# Change to the script's directory
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $ScriptDir

# Check if Git is initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing Git repository..."
    git init
    git remote add origin $myrepo
}

# Ensure remote origin is correct
$remotes = git remote
if (-not ($remotes -contains 'origin')) {
    git remote add origin $myrepo
}

# Pull latest changes and prevent merge conflicts
Write-Host "Pulling latest changes from GitHub..." -ForegroundColor Cyan
git pull origin master --rebase --strategy=recursive -X theirs

# Build Hugo site and ensure it outputs to `public/`
Write-Host "Building the Hugo site..." -ForegroundColor Green
hugo --destination public

# Stage all changes except this script
Write-Host "Staging changes for commit..." -ForegroundColor Cyan
git add . ':!upload.ps1'

# Commit with timestamp
$commitMessage = "Site update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Write-Host "Committing changes..." -ForegroundColor Cyan
git commit -m "$commitMessage"

if ($LASTEXITCODE -ne 0) {
    Write-Host "Nothing to commit. Skipping push." -ForegroundColor Yellow
    exit
}

# Push to the correct branch (adjust if needed)
Write-Host "Pushing changes to GitHub..." -ForegroundColor Green
git push origin master --force  # Change `master` to `gh-pages` if needed

if ($LASTEXITCODE -eq 0) {
    Write-Host "Deployment successful!" -ForegroundColor Green
} else {
    Write-Error "Failed to push changes to GitHub."
}
