@ECHO OFF
CD stable
FOR /D %%a IN (*) DO (
  CD %%a
  GOTO :EOF
)