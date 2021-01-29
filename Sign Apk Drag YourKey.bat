echo off
cls
del /q "%~p1/%~n1-signed.apk"
copy /y "%~f1" "%~p1/%~n1-signed.apk"
echo -------In: %~f1
echo -------Out: %~p1/%~n1-signed.apk
echo -------Signing...
apksigner sign --ks "Your signing key file" "%~p1/%~n1-signed.apk"
echo -------Done.
pause