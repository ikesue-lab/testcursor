# testcursor を GitHub にアップロードするスクリプト
# 実行前に: GitHub でリポジトリ "testcursor" を新規作成しておいてください（README は追加しない）
# 実行前に: 下の YOUR_GITHUB_USERNAME をあなたの GitHub ユーザー名に置き換えてください

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "1. Git リポジトリを初期化しています..." -ForegroundColor Cyan
git init

Write-Host "2. ファイルをステージングしています..." -ForegroundColor Cyan
git add .

Write-Host "3. 初回コミットを作成しています..." -ForegroundColor Cyan
git commit -m "Initial commit"

Write-Host "4. メインブランチを main に設定しています..." -ForegroundColor Cyan
git branch -M main

# ★★★ ここをあなたの GitHub ユーザー名に変更してください ★★★
$githubUsername = "YOUR_GITHUB_USERNAME"
$remoteUrl = "https://github.com/$githubUsername/testcursor.git"

Write-Host "5. リモートを追加しています..." -ForegroundColor Cyan
git remote add origin $remoteUrl

Write-Host "6. GitHub にプッシュしています..." -ForegroundColor Cyan
git push -u origin main

Write-Host "完了しました！" -ForegroundColor Green
