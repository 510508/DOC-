

@echo off
title ����DOC�����䣨FDLS��

color f0
:input
echo.  
echo. 
echo.     1�����ؼ������IP�����ַ�л���    /      2��ˢ��IP��ַ�л�������ַ��
echo.  
echo. 
echo.     3����������ˢ���Լ�IP���õ�ַ��    /      4����ʾ���������ļ�����������
echo.  
echo. 
echo.     5������((FTP �� ����)) ���޸���    /      6������ԱȨ�޵���������ָ�
echo.  
echo. 
echo.     7��ϵͳ������ͼ��ȥ���ͻ�ԭ��    /      8������ϵͳ�������仺���ļ���    	
echo. 	
echo. 	
echo.     9��ϵͳ�����ȫ����������䣩    /     10���޸ı�������ҳCookieʱ�䣩
echo.
echo.
echo.    11��JAVAд�뻷������   ��Bug����    /     12�������򲿷���ҪEXEԴ��鿴��
echo. 	
echo.	

set /p"num=����������ѡ������Ȼ���»س�����"


if "%num%"=="1" cls & goto 1
if "%num%"=="2" cls & goto 2
if "%num%"=="3" cls & goto 3
if "%num%"=="4" cls & goto 8
if "%num%"=="5" cls & goto 9
if "%num%"=="6" cls & goto 10
if "%num%"=="7" cls & goto 11
if "%num%"=="8" cls & goto 20
if "%num%"=="9" cls & goto 23
if "%num%"=="10" cls & goto 22
if "%num%"=="11" cls & goto 5
if "%num%"=="12" cls & goto 21
if "%num%"=="0000" cls & goto 39

echo. & echo �����������" 1" �� " 2" �� " 3" �� " 4" ��" 5" ��" 6" ��" 7" ��" 9" ��" 10" ��" 11" ��" 12" ֮��������ַ��� & pause>nul & cls & goto input & Clear 

:1
set /p"IP=����������������IP��ַ��3λ���е�ַ�л���"
if "%IP%"=="" cls & goto 19
echo ��������ִ�м���IP��ַ.
echo ������������IP��ַ�����Եȡ���
netsh interface ip set address name="��̫��" static 192.168.181."%IP%" 255.255.255.0
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:2
echo ��������ִ��ˢ��IP��ַ�л�������ַ.
echo ���������Զ����ˢ��IP��ַ�����Եȡ���
netsh interface ip set address name="��̫��" source=dhcp
 netsh interface ip set dns name="��̫��" source=dhcp

set /p nums=����ѡ�������е������(1.�������� 2.ϵͳĬ�������) �����Ȼ���»س�����"

if "%nums%"=="1" cls & goto 7
if "%nums%"=="2" cls & goto 6

echo. & echo ����������ˡ�1���� "2" ֮��������ַ���& pause>nul & cls & goto input & Clear
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:3
set /p num=���������ã�ȷ����ظ�( y /n )�������Ȼ���»س�������ļ��������������"
if "%num%"=="y" cls & goto 4
if "%num%"=="n" cls & goto 5

echo. & echo ����������ˡ�y���͡�n��֮��������ַ��� & pause>nul & cls & goto input 

:4
echo ����ִ��������ĵ��Խ���һ���Ӻ��Զ��������������ܺ���Ҫ�ļ���
netsh winsock reset 
shutdown /r /t 60
echo ���ѡ�� - FDLS 
pause
pause>nul
cls & goto input

:5
echo ���ѡ�� - FDLS 
pause
pause>nul
cls & goto input

:6
echo ���ڵ��ñ���ϵͳĬ�������
start iexplore "www.qingniao.com"
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:7  
echo ���ڵ��ñ��ػ�������
start Firefox "www.qingniao.com"
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:8 
echo ��ʾ���������ļ�-������
for /f "delims=?" %%a in ('dir /a /b') do attrib -a -s -h -r "%%a"
@echo off 
echo ���ڱ������Ŀ¼����ʾ���е������ļ�
echo ���ѡ�� - FDLS
pause>nul
cls & goto input

:9 
set /p"IP=����������������IP��ַ��3λ���е�ַ�л���"
if "%IP%"=="" cls & goto 19
netsh interface ip set address name="��̫��" static 192.168.181."%IP%" 255.255.255.0
set /p nums=����ѡ��Ҫִ�е����� (1. FTP �� 2. ���� 3. ָ���޸�))-FDLS�ļ�Ⱥ�������Ȼ���»س�����"
if "%nums%"=="1" cls & goto 15
if "%nums%"=="2" cls & goto 14 
if "%nums%"=="3" cls & goto 16

echo ע�⣺��ѡ��Ķ���Ĭ�ϵ��ü���IP
echo. & echo ����������ˡ�1���� "2" ֮��������ַ���& pause>nul & cls & goto input & Clear
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:10
echo ����CMD������ָ��
start cmd
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:11
set /p nums=����ѡ��Ҫִ�е����1.ȥ�����ͼ�� 2.��ԭ���ͼ�꣩ �����Ȼ���»س�����"
if "%nums%"=="1" cls & goto 12
if "%nums%"=="2" cls & goto 13
echo. & echo ����������ˡ�1���� "2" ֮��������ַ���& pause>nul & cls & goto input & Clear
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:12
echo ���ͼ��ȥ����������ִ�У����Եȡ���
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
start explorer
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:13
echo ���ͼ�껹ԭ��������ִ�У����Եȡ���
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /f
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
start explorer
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:14
echo ����-FDLS�ļ�Ⱥ�����磩
start \\�����ɷ
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:15
echo ����-FDLS�ļ�Ⱥ��FTP��
start iexplore "ftp://192.168.181.135:666"
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:16
set /p nums=����ѡ��Ҫִ�е����1.����ע����޸�ָ�� 2.ͨ���ı����������޸��� �����Ȼ���»س�����"

if "%nums%"=="1" cls & goto 17
if "%nums%"=="2" cls & goto 18
echo. & echo ����������ˡ�1���� "2" ֮��������ַ���& pause>nul & cls & goto input & Clear
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:17
echo ����ע����޸�ָ������ִ�У����Եȡ���
echo ��ʾ�����ע����У���ʾ�и��ļ�����Ϣ��ѡ�񸲸ǡ�yes������
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v AllowlnsecureGuestAuth /t REG_DWORD /d 1
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:18
echo ͨ���ı����������޸�����ִ�У����Եȡ���
echo -------------------------������˵����������ϸ�Ķ���-------------------------
echo 1. �ɹ��򿪱��ذ�ȫ���Թ����
echo 2. ѡ�������б����������
echo 3. �������硢�޷�ʶ�����ڷ��ʣ����͵�����ȫ������Ϊר���������ͼ���
echo 4. һ������²�����Ҫ���������Ժ����������������Բ����ã��ɼ���ִ�У���һ������ָ��
echo 5. �رձ��ذ�ȫ���Ծͻ�����Ƿ��һ�����õ�����
secpol.msc

set /p nums=���Ƿ�Ҫ����ִ�н�һ���޸���y /n�� �����Ȼ���»س�����"
if "%nums%"=="y" cls & goto 4
if "%nums%"=="n" cls & goto 5
echo. & echo ����������ˡ�y���͡�n��֮��������ַ��� & pause>nul & cls & goto input 
pause
pause>nul
cls & goto input

:19
echo �Բ��𣬺���λ��������Ϊ�գ�
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:20
@echo off
echo ��������ϵͳ��������װ�����ļ������Ե�......
echo ��ʾ������������̱�ռ���޷����ʵ����⣬�����ĵȴ����ɣ��ɼ����ȴ�
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
echo  ���ѡ�� - FDLS
pause>nul
cls & goto input

:21
set /p"IP=����������������IP��ַ��3λ���е�ַ�л���"
if "%IP%"=="" cls & goto 19
netsh interface ip set address name="��̫��" static 192.168.181."%IP%" 255.255.255.0
echo ��EXE������FDLS����������ʾ������ҪԴ��
start \\�����ɷ\�����װ�ϼ�\��������ļ������䡢�޸��������ȫ��\EXEԴ��.txt
echo.
echo ���ѡ�� - FDLS
pause>nul
cls & goto input

:22
echo �޸ı�������ҳCookieʱ��
time 
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:23
echo ϵͳ�����ȫ����������� ��FDLS��
set /p"IP=����������������IP��ַ��3λ���е�ַ�л���"
if "%IP%"=="" cls & goto 19
netsh interface ip set address name="��̫��" static 192.168.181."%IP%" 255.255.255.0
set /p nums="��ѡ��Ҫִ�е����1.ϵͳ���� 2.������ �����Ȼ���»س�����"
if "%nums%"=="1" cls & goto 24
if "%nums%"=="2" cls & goto 25
echo. & echo ����������ˡ�1���� "2" ֮��������ַ���& pause>nul & cls & goto input & Clear
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:24
echo ϵͳ����ָ�Windowsϵͳ��
set /p nums="��ѡ��Ҫִ�е����1. DOC��ʽ���� 2. ���������� �����Ȼ���»س�����"

if "%nums%"=="1" cls & goto 35
if "%nums%"=="2" cls & goto 36

echo. & echo �����������" 1" �� " 2" ֮��������ַ��� & pause>nul & cls & goto input & Clear 
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:25
echo �������ָ�1-3�꼶ѧϰ�����
set /p nums="��ѡ��Ҫִ�е����1.Office��� 2.Visual Studio 3.Eclipse 4.Android Studio �޴����� �����Ȼ���»س�����"
if "%nums%"=="1" cls & goto 26
if "%nums%"=="2" cls & goto 27
if "%nums%"=="3" cls & goto 28
if "%nums%"=="4" cls & goto 29
echo. & echo �����������" 1" �� " 2" �� " 3" �� " 4" ֮��������ַ��� & pause>nul & cls & goto input & Clear 
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:26
echo ok
set /p nums="��ѡ��Ҫִ�е����1. ���ʽ(1) 2. ���ʽ(2) �� �����Ȼ���»س�����"
if "%nums%"=="1" cls & goto 37
if "%nums%"=="2" cls & goto 38
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:27
start \\�����ɷ\�����װ�ϼ�\C#��װ\VS����.txt
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:28
start \\�����ɷ\�����װ�ϼ�\JAVA�ļ���װ\�ƽ��ļ�\cracker.jar
start \\�����ɷ\�����װ�ϼ�\JAVA�ļ���װ\�ƽ��ļ�\�̳�.pdf
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:29
start \\�����ɷ\�����װ�ϼ�\Android������װ(˫����)\����Eclipse��׿��������.png
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:30
echo ��ͥ��Windows��������������У����Ե�......
start \\�����ɷ\�����װ�ϼ�\�������������\����ͥ��.exe
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:31
echo ������Windows��������������У����Ե�......
\\�����ɷ\�����װ�ϼ�\�������������\��������.exe
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:32
echo רҵ��Windows��������������У����Ե�......
\\�����ɷ\�����װ�ϼ�\�������������\��רҵ��.exe
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:33
echo ��ҵ��Windows��������������У����Ե�......
\\�����ɷ\�����װ�ϼ�\�������������\����ҵ��.exe
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:34
echo ����վ��Windows��������������У����Ե�......
\\�����ɷ\�����װ�ϼ�\�������������\������վ��.exe
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:35
set /p nums="��ѡ��Ҫִ�е����1.��ͥ�� 2.������ 3.רҵ�� 4.��ҵ�� 5.����վ�棩 �����Ȼ���»س�����"
if "%nums%"=="1" cls & goto 30
if "%nums%"=="2" cls & goto 31
if "%nums%"=="3" cls & goto 32
if "%nums%"=="4" cls & goto 33
if "%nums%"=="5" cls & goto 34
echo. & echo �����������" 1" �� " 2" �� " 3" �� " 4" ֮��������ַ��� & pause>nul & cls & goto input & Clear 
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:36
echo �Ѿ�����FDLS����Ⱥ�еļ����
start \\�����ɷ\ϵͳ��װ�ϼ�\Windowsϵͳ��װ\win10ϵͳ��office�����
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input


:37
echo ���ʽ��1��Office����
start \\�����ɷ\�����װ�ϼ�\�������������\��1������.exe
echo ���ѡ�� - FDLS
pause
pause>nul
cls & goto input

:38
echo ���ʽ��2��Office����
start \\�����ɷ\�����װ�ϼ�\�������������\��2������.exe
echo ���ѡ�� - FDLS
pause 
pause>nul
cls & goto input

:39
echo ������ģʽ  - FDLS
start \\�����ɷ\�����װ�ϼ�\����\�������.txt
echo ���ѡ�� - FDLS
pause 
pause>nul
cls & goto input

:40
echo Java���������Զ�����


