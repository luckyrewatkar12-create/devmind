#!/usr/bin/env pwsh
# ═══════════════════════════════════════════════════════════════
#  DevMind Auto-Push Watcher  (run this in a terminal window)
#  Just double-click or run:  powershell -ExecutionPolicy Bypass -File auto-push.ps1
# ═══════════════════════════════════════════════════════════════

$repoPath = "C:\Users\ADMIN\OneDrive\Desktop\bob files"
$logFile  = "$repoPath\auto-push.log"

function Write-Log($msg, $color = "White") {
    $line = "[$(Get-Date -Format 'HH:mm:ss')] $msg"
    Write-Host $line -ForegroundColor $color
    Add-Content -Path $logFile -Value $line
}

Write-Host ""
Write-Host "╔══════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   🧠 DevMind — GitHub Auto-Push Watcher     ║" -ForegroundColor Cyan
Write-Host "║   Every change saves to GitHub automatically ║" -ForegroundColor Cyan
Write-Host "║   Press Ctrl+C to stop                       ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

Set-Location $repoPath

# Verify git remote
$remote = git remote get-url origin 2>&1
Write-Log "Repo   : $repoPath" "Gray"
Write-Log "Remote : $remote" "Gray"
Write-Log "Watching for changes every 15 seconds..." "Green"
Write-Host ""

$lastHash = ""

while ($true) {
    Start-Sleep -Seconds 15

    Set-Location $repoPath

    # Get current status hash to detect real changes
    $status = git status --porcelain 2>&1
    $currentHash = ($status | Out-String).Trim()

    if ($currentHash -ne "" -and $currentHash -ne $lastHash) {
        $lastHash = $currentHash

        # Show what changed
        $files = ($status | ForEach-Object { $_.Trim().Substring(3) }) -join ", "
        Write-Log "📝 Changes: $files" "Yellow"

        # Stage all changes
        git add -A 2>&1 | Out-Null

        # Auto commit message with timestamp
        $commitMsg = "⚡ Auto-update [$(Get-Date -Format 'MMM dd HH:mm')]"
        git commit -m $commitMsg 2>&1 | Out-Null

        # Push
        $push = git push origin main 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Log "✅ Pushed to GitHub: $commitMsg" "Green"
        } else {
            Write-Log "❌ Push failed: $push" "Red"
            # Try once more
            Start-Sleep -Seconds 5
            git push origin main 2>&1 | Out-Null
            if ($LASTEXITCODE -eq 0) {
                Write-Log "✅ Retry succeeded!" "Green"
            }
        }
    } else {
        Write-Host "." -NoNewline -ForegroundColor DarkGray
    }
}
