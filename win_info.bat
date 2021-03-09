@echo off
chcp 65001

REM variaveis
REM Caminho onde vai ser salvo o log
set log_path=c:

echo INFORMAÇÕES DE USUÁRIO > %log_path%\map_log.txt
echo --------------------------- >> %log_path%\map_log.txt
echo. >> %log_path%\map_log.txt
echo DATA: >> %log_path%\map_log.txt:
date /T >> %log_path%\map_log.txt
echo HORA: >> %log_path%\map_log.txt
time /T >> %log_path%\map_log.txt
echo Usuário: >> %log_path%\map_log.txt
whoami >> %log_path%\map_log.txt
echo Nome do computador: >> %log_path%\map_log.txt
hostname >> %log_path%\map_log.txt
echo. >> %log_path%\map_log.txt
whoami /priv >> %log_path%\map_log.txt
echo. >> %log_path%\map_log.txt
echo INFORMAÇÕES DO SISTEMA: >> %log_path%\map_log.txt
echo --------------------------- >> %log_path%\map_log.txt
systeminfo >> %log_path%\map_log.txt

start notepad.exe %log_path%\map_log.txt