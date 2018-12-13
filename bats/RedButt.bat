REM Firefox-like
REM Folder
RD /S /Q "D:\workfolder\13) ЂввҐбв жЁп\WaterfoxPortable\Data\profile"
REM Roaming
RD /S /Q "%APPDATA%\Mozilla\Firefox\"
RD /Q /S "%APPDATA%\Waterfox"
RD /Q /S "%APPDATA%\CLIQZ"
REM Local
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\"
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\CLIQZ"
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\Waterfox"

REM Chrome-like
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data"

REM Other
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\Opera Software\Opera Stable\Cache"
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\qBittorrent\logs"
RD /Q /S "C:\Users\%USERNAME%\AppData\Local\qBittorrent\BT_backup"

REM Windows Default
DEL /S /Q /F "C:\Windows\Downloaded Program Files"
DEL /S /Q /F "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
