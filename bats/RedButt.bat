REM Firefox-like
REM Folder
RD /S /Q "D:\workfolder\13) ЂввҐбв жЁп\WaterfoxPortable\Data\profile"
REM Roaming
RD /S /Q "%APPDATA%\Mozilla\Firefox\"
RD /Q /S "%APPDATA%\Waterfox"
RD /Q /S "%APPDATA%\CLIQZ"
RD /Q /S "%APPDATA%\Moonchild Productions\Pale Moon"
REM Local
RD /Q /S "%localappdata%\Mozilla\Firefox\"
RD /Q /S "%localappdata%\CLIQZ"
RD /Q /S "%localappdata%\Waterfox"
RD /Q /S "%localappdata%\Moonchild Productions\Pale Moon\Profiles"

REM Chrome-like
RD /Q /S "%systemdrive%\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data"

REM Other
RD /Q /S "%systemdrive%\Users\%USERNAME%\AppData\Local\Opera Software\Opera Stable\Cache"
RD /Q /S "%systemdrive%\Users\%USERNAME%\AppData\Local\qBittorrent\logs"
RD /Q /S "%systemdrive%\Users\%USERNAME%\AppData\Local\qBittorrent\BT_backup"

REM Windows Default
DEL /S /Q /F "%windir%\Downloaded Program Files"
DEL /S /Q /F "%localappdata%\Microsoft\Windows\Temporary Internet Files"
