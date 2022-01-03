@ECHO OFF
CD stable
tar -zxf stable.zip
FOR /D %%a IN (*) DO (
  CD %%a
  GOTO :EOF
)