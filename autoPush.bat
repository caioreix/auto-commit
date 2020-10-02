@ECHO OFF

FOR /f "tokens=*" %%x in ('dir /a:d /b') do (
  CHOICE /C NY /T 10 /D N /M "Deseja Dar Push em %%x ?"
  IF ERRORLEVEL 2 (
  echo %%x
  cd ./%%x
  git checkout -b autoPush
  git commit -a -m "auto push"
  git push origin autoPush
  cd ..
  )
)
pause
