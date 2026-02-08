# Windows パッケージマネージャー (winget) を使って一括インストール
Write-Host "開発ツールのインストールを開始します..." -ForegroundColor Cyan

# 1. Git のインストール
Write-Host "Git をインストール中..."
winget install --id Git.Git -e --source winget

# 2. Python のインストール
Write-Host "Python をインストール中..."
winget install --id Python.Python.3.12 -e --source winget

# 3. Cursor のインストール
Write-Host "Cursor をインストール中..."
winget install --id Anysphere.Cursor -e --source winget

# 4. GitHub CLI (AIがGitHub操作をするのに便利)
Write-Host "GitHub CLI をインストール中..."
winget install --id GitHub.cli -e --source winget

Write-Host "完了しました！PCを再起動するか、ターミナルを一度閉じてから作業を開始してください。" -ForegroundColor Green
