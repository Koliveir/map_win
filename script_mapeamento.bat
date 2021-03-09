chcp 65001

ipconfig /flushdns

net time \\SERVER /set /yes
net date \\SERVER /set /yes

REM Limpa registro - Descomente essa parte caso queira limpar os registros antes do mapeamento

REM net use * /d /y
REM reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##SERVER#DIRETORIO /f

REM Mapeamentos

REM Adiciona um nome do mapemaneto no registro, aqui que vai ser escolhido o nome de exibição desse mapeamento

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##SERVER#DIRETORIO /v _LabelFromReg /t REG_SZ /f /d "NOME_DIRETORIO"

REM IP/SERVER do diretório a ser mapeado - Retire o * caso queira especificar uma letra no mapemanto. EX: D: \\192.168.1.1\diretorio

net use * \\SERVER\DIRETORIO /p:yes

net config server /autodisconnect:-1