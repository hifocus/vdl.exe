@echo off
copy /y "C:\hostedtoolcache\windows\Python\3.7.9\x64\Lib\site-packages\cykdl\__main__.py" "__main__.py" && md hooks
type nul > hooks\hook-ykdl.py
echo from PyInstaller.utils.hooks import collect_submodules>> hooks\hook-ykdl.py
echo,>> hooks\hook-ykdl.py
echo hiddenimports = [x for x in collect_submodules('ykdl')]>> hooks\hook-ykdl.py
C:\hostedtoolcache\windows\Python\3.7.9\x64\Scripts\pyinstaller.exe --onefile --noupx --additional-hooks-dir hooks --name ykdl "__main__.py"
copy /y dist\ykdl.exe ykdl.exe
rd /s /q __pycache__ build dist hooks && del __main__.py ykdl.spec
pause