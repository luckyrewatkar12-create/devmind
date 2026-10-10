#!/usr/bin/env pwsh
# ═══════════════════════════════════════════════════════════════
#  DevMind Auto-Push Watcher
#  Watches devmind/ folder for changes and auto-pushes to GitHub
# ═══════════════════════════════════════════════════════════════

$watchPath = "C:\Users\ADMIN\OneDrive\Desktop\bob files"
$repoPath  = "C:\Users\ADMIN\OneDrive\Desktop\bob files"
$interval  = 10  # seconds between checks

Write-Host ""
Write-Host "═══════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  🧠 DevMind Auto-Push Watcher" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  Watching : $watchPath" -ForegroundColor Gray
Write-Host "  Interval : Every $interval seconds" -ForegroundColor Gray
Write-Host "  Press Ctrl+C to stop" -ForegroundColor Gray
Write-Host "═══════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# Set up FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $watchPath
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true
$watcher.Filter = "*.*"
$watcher.NotifyFilter = [System.IO.NotifyFilters]::LastWrite -bor [System.IO.NotifyFilters]::FileName

$pendingPush = $false
$lastPushTime = Get-Date

function Push-ToGitHub {
    param([string]$message)
    Set-Location $repoPath
    $status = git status --porcelain 2>&1
    if ($status) {
        Write-Host ""
        Write-Host "  📦 Changes detected — pushing to GitHub..." -ForegroundColor Yellow
        git add -A 2>&1 | Out-Null
        git commit -m $message 2>&1 | Out-Null
        $pushResult = git push origin main 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Host "  ✅ Pushed successfully at $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Green
            Write-Host "  📝 Commit: $message" -ForegroundColor Gray
        } else {
            Write-Host "  ❌ Push failed: $pushResult" -ForegroundColor Red
        }
        Write-Host ""
    }
}

# Register change events
$onChange = Register-ObjectEvent $watcher "Changed" -Action {
    $global:pendingPush = $true
}
$onCreated = Register-ObjectEvent $watcher "Created" -Action {
    $global:pendingPush = $true
}
$onDeleted = Register-ObjectEvent $watcher "Deleted" -Action {
    $global:pendingPush = $true
}
$onRenamed = Register-ObjectEvent $watcher "Renamed" -Action {
    $global:pendingPush = $true
}

Write-Host "  👁️  Watching for file changes..." -ForegroundColor Green

try {
    while ($true) {
        Start-Sleep -Seconds $interval

        if ($pendingPush) {
            $now = Get-Date
            $secsSinceLastPush = ($now - $lastPushTime).TotalSeconds

            # Debounce — wait at least 8 seconds after last change before pushing
            if ($secsSinceLastPush -ge 8) {
                $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
                $changedFiles = (git -C $repoPath status --porcelain 2>&1) -join ", "
                $commitMsg = "⚡ Auto-update: $timestamp"
                Push-ToGitHub -message $commitMsg
                $pendingPush = $false
                $lastPushTime = Get-Date
            }
        }
    }
} finally {
    # Cleanup on Ctrl+C
    Unregister-Event -SourceIdentifier $onChange.Name    -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier $onCreated.Name  -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier $onDeleted.Name  -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier $onRenamed.Name  -ErrorAction SilentlyContinue
    $watcher.Dispose()
    Write-Host ""
    Write-Host "  🛑 Watcher stopped." -ForegroundColor Red
}
