@ECHO OFF
set stbDIR=stable
IF not exist %stbDIR% (mkdir %stbDIR%)
move-cli stable.zip stable/stable.zip