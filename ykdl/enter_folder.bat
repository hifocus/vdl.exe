@ECHO OFF
set stbDIR=build\stable\
IF not exist %stbDIR% (mkdir %stbDIR%)
CD stable
FOR /D %%a IN (*) DO (
  CD %%a
  GOTO :EOF
)