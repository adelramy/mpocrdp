@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/adelramy/mpocrdp/refs/heads/main/setup.py
curl -s -L -o show.bat https://raw.githubusercontent.com/adelramy/mpocrdp/refs/heads/main/show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/adelramy/llop/refs/heads/main/loop.bat
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.litemanager.com/soft/litemanager_5.zip', 'litemanager.zip')"
powershell -Command "Expand-Archive -Path 'litemanager.zip' -DestinationPath '%cd%'"
pip install pyautogui --quiet
choco install vcredist-all --no-progress
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin Jor3a_Ti9niya
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "LiteManager Pro - Server.msi"
python setup.py
