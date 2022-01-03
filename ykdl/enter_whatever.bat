@ECHO OFF
FOR /D %%a IN (*) DO (
  CD %%a
  GOTO :EOF
)