@echo off
::Comentario
Title Sistema de Respaldos
echo.
echo ****************************************************************
echo *                                                              *
echo *        Bienvenido al Sistema Principal de Respaldos          *
echo *                                                              *
echo ****************************************************************
echo.
chdir > t.txt
set /p RUTA=<t.txt
del t.txt

:bloques
echo Elije el bloque que desea utilizar:
echo 1. Respaldos de cero.
echo 2. Actualizar respaldos.
echo.
set /p ops=
echo.
if %ops%==1 goto :menu
if %ops%==2 goto :actualizar

:menu
cls
echo.
echo Que archivos desea respaldar?
echo 1. Mi Musica.
echo 2. Mis Documentos.
echo 3. Mis Imagenes.
echo 4. Mis descargas.
echo 5. Mis videos.
echo 7. Volver.
echo 8. Salir.
echo.
set /p ops=
echo.
if %ops%==1 goto :musica
if %ops%==2 goto :documentos
if %ops%==3 goto :imagenes
if %ops%==4 goto :descargas
if %ops%==5 goto :videos
if %ops%==6 goto :gral
if %ops%==7 goto :bloques
if %ops%==8 goto :salir

:actualizar
cls
echo.
echo Que archivos desea actualizar?
echo 1. Mi Musica.
echo 2. Mis Documentos.
echo 3. Mis Imagenes.
echo 4. Mis descargas.
echo 5. Mis videos.
echo 6. Todos.
echo 7. Volver.
echo 8. Salir.
echo.
set /p ops=
echo.
if %ops%==1 goto :Actmusica
if %ops%==2 goto :Actdocumentos
if %ops%==3 goto :Actimagenes
if %ops%==4 goto :Actdescargas
if %ops%==5 goto :Actvideos
if %ops%==6 goto :Actgral
if %ops%==7 goto :bloques
if %ops%==8 goto :salir

:musica
xcopy /e /y /i C:\%HOMEPATH%\Music C:\%HOMEPATH%\Desktop\Respaldo\Musicas
echo.
start %RUTA%\resp.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:Actmusica
xcopy /d /e /y /i C:\%HOMEPATH%\Music C:\%HOMEPATH%\Desktop\Respaldo\Musicas
echo.
start %RUTA%\act.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:documentos
xcopy /e /y /i C:\%HOMEPATH%\Documents C:\%HOMEPATH%\Desktop\Respaldo\Documentos
echo.
start %RUTA%\resp.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:Actdocumentos
xcopy /d /e /y /i C:\%HOMEPATH%\Documents C:\%HOMEPATH%\Desktop\Respaldo\Documentos
echo.
start %RUTA%\act.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:imagenes
xcopy /e /y /i C:\%HOMEPATH%\Pictures C:\%HOMEPATH%\Desktop\Respaldo\Imagenes
echo.
start %RUTA%\resp.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:Actimagenes
xcopy /d /e /y /i C:\%HOMEPATH%\Pictures C:\%HOMEPATH%\Desktop\Respaldo\Imagenes
echo.
start %RUTA%\act.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:descargas
xcopy /e /y /i C:\%HOMEPATH%\Downloads C:\%HOMEPATH%\Desktop\Respaldo\Descargas
echo.
start %RUTA%\resp.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:Actdescargas
xcopy /d /e /y /i C:\%HOMEPATH%\Downloads C:\%HOMEPATH%\Desktop\Respaldo\Descargas
echo.
start %RUTA%\act.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:videos
xcopy /e /y /i C:\%HOMEPATH%\Videos C:\%HOMEPATH%\Desktop\Respaldo\Videos
echo.
start %RUTA%\resp.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:Actvideos
xcopy /d /e /y /i C:\%HOMEPATH%\Videos C:\%HOMEPATH%\Desktop\Respaldo\Videos
echo.
start %RUTA%\act.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:gral
xcopy /e /y /i C:\%HOMEPATH%\Music C:\%HOMEPATH%\Desktop\Respaldo\Musicas
xcopy /e /y /i C:\%HOMEPATH%\Documents C:\%HOMEPATH%\Desktop\Respaldo\Documentos
xcopy /e /y /i C:\%HOMEPATH%\Pictures C:\%HOMEPATH%\Desktop\Respaldo\Imagenes
xcopy /e /y /i C:\%HOMEPATH%\Downloads C:\%HOMEPATH%\Desktop\Respaldo\Descargas
xcopy /e /y /i C:\%HOMEPATH%\Videos C:\%HOMEPATH%\Desktop\Respaldo\Videos
echo.
start %RUTA%\resp.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:Actgral
xcopy /d /e /y /i C:\%HOMEPATH%\Music C:\%HOMEPATH%\Desktop\Respaldo\Musicas
xcopy /d /e /y /i C:\%HOMEPATH%\Documents C:\%HOMEPATH%\Desktop\Respaldo\Documentos
xcopy /d /e /y /i C:\%HOMEPATH%\Pictures C:\%HOMEPATH%\Desktop\Respaldo\Imagenes
xcopy /d /e /y /i C:\%HOMEPATH%\Downloads C:\%HOMEPATH%\Desktop\Respaldo\Descargas
xcopy /d /e /y /i C:\%HOMEPATH%\Videos C:\%HOMEPATH%\Desktop\Respaldo\Videos
echo.
start %RUTA%\act.vbs
echo Operacion Finalizada con exito.
pause
goto :orden

:orden
cls
echo 1. Realizar otra operacion.
echo 2. Salir.
echo.
set /p opc=

if %opc%==1 goto :bloques
if %opc%==2 goto :salir

:salir
exit

