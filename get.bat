@echo off& call load.bat _parseBlockNum _parseShowBlockNum2 _parseASCIIStr _getRandomNum _parseArray _parseJSON _downcase _upcase& setlocal enabledelayedexpansion
::˵��
::  ����ָ���ı������а�
::  ����Ϊ��ʱ����key�ı�
::  �Ҳ�����Ӧ�Ľ���ʱ, ����ݵ�ǰ����key��key�ı������ַ������ƶȱȽ�, �ṩ����
::�Ա�do.bat\get.bat
::  do.bat ���ش����߼�, ������չʾһ�ݽ��˵��, Ҳ����û���κ���ʾ
::  get.bat�����ı����ݵ����а�, �����д����߼�, ������������������
::ע��
::ʹ��echo abc|clip, ����һ�����з�, ��Ϊecho���������ϻ��з�
::ʹ��set /p"=abc"<nul�����������з�
set guessKeyFile=getKey.txt
if "%1"=="" (
    (for /f "tokens=1-4 delims== " %%i in (%~f0) do if "%%i %%j %%k"=="if /i %%1" echo %%l)>%guessKeyFile%
    exit
)
call tool_backupClip.bat



::========================= ���� =========================
if /i %1==fozu (
    setlocal enabledelayedexpansion
    set "fozu1=/*"
	set "fozu2=                   _ooOoo_"
	set "fozu3=                  o8888888o"
	set "fozu4=                  88" . "88"
	set "fozu5=                  (| -_- |)"
	set "fozu6=                  O\  =  /O"
	set "fozu7=               ____/`---'\____"
	set "fozu8=             .'  \\|     |//  `."
	set "fozu9=            /  \\|||  :  |||//  \"
	set "fozu10=           /  _||||| -:- |||||-  \"
	set "fozu11=           |   | \\\  -  /// |   |"
	set "fozu12=           | \_|  ''\---/''  |   |"
	set "fozu13=           \  .-\__  `-`  ___/-. /"
	set "fozu14=         ___`. .'  /--.--\  `. . __"
	set "fozu15=      ."" '<  `.___\_<|>_/___.'  >'""."
	set "fozu16=     | | :  `- \`.;`\ _ /`;.`/ - ` : | |"
	set "fozu17=     \  \ `-.   \_ __\ /__ _/   .-` /  /"
	set "fozu18=======`-.____`-.___\_____/___.-`____.-'======"
	set "fozu19=                   `=---='"
	set "fozu20=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	set "fozu21=         ���汣��       ����BUG"
	set "fozu22=*/"
    (for /l %%i in (1,1,22) do echo !fozu%%i!)>%temp%\getFozu.txt& clip<%temp%\getFozu.txt
    goto :EOF
)
if /i %1==mail set /p"=bjc5233@gmail.com"<nul|clip& goto :EOF
if /i %1==gmail set /p"=bjc5233@gmail.com"<nul|clip& goto :EOF
if /i %1==mobile set /p"=18300000000"<nul|clip& goto :EOF
if /i %1==zimu1 set /p"=abcdefghijklmnopqrstuvwxyz"<nul|clip& goto :EOF
if /i %1==zimu2 set /p"=ABCDEFGHIJKLMNOPQRSTUVWXYZ"<nul|clip& goto :EOF
if /i %1==ip (
	::����װvmware��ʱ, ���ж����������������, Ĭ���Ե�һ����Ϊ��������
	for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findStr "IPv4 ��ַ"') do (
		set IP=%%i& set IP=!IP:~1!
		set /p"=!IP!"<nul|clip
		echo.& echo.& echo !IP!& echo [�Ѹ��Ƶ�������]& pause>nul
	)
)

::--����ʱ��
if /i %1==date (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=-!
	set /p"=!date!"<nul|clip& goto :EOF
)
if /i %1==date2 (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=!
	set /p"=!date!"<nul|clip& goto :EOF
)
if /i %1==time set /p"=%time:~0,8%"<nul|clip& goto :EOF
if /i %1==time2 (
    setlocal enabledelayedexpansion
    set time=%time:~0,8%
    set time=!time::=!
	set /p"=!time!"<nul|clip& goto :EOF
)
if /i %1==datetime (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=-!
	set /p"=!date! %time:~0,8%"<nul|clip& goto :EOF	
)
if /i %1==datetime2 (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=!
	set time=%time:~0,8%
    set time=!time::=!
    set /p"=!date!!time!"<nul|clip& goto :EOF
)
if /i %1==fengexian (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=-!
	set "fengexian=========================="
    echo !fengexian! !date! !fengexian!|clip& goto :EOF
)
::--����
if /i %1==star set /p"=��"<nul|clip& goto :EOF
if /i %1==star2 set /p"=��"<nul|clip& goto :EOF
if /i %1==stars (
    setlocal enabledelayedexpansion
    set star1=������
    set star2=������
    if "%2"=="" (set num1=1) else (set num1=%2)
	set /a num2=5-num1
	for %%i in (!num1!) do set star1=!star1:~0,%%i!
	for %%i in (!num2!) do set star2=!star2:~0,%%i!
	set /p"=!star1!!star2!"<nul|clip& goto :EOF
)
if /i %1==ok set /p"=��"<nul|clip& goto :EOF
if /i %1==dui set /p"=��"<nul|clip& goto :EOF
if /i %1==gou set /p"=��"<nul|clip& goto :EOF
if /i %1==cuo set /p"=x"<nul|clip& goto :EOF
if /i %1==cha set /p"=x"<nul|clip& goto :EOF
if /i %1==127 set /p"=127.0.0.1"<nul|clip& goto :EOF
::--����
if /i %1==num (
    setlocal enabledelayedexpansion
    set nums=�٢ڢۢܢݢޢߢ���
    if "%2"=="" set /p"=!nums!"<nul|clip& goto :EOF
    set nums= !nums!& set /p"=!nums:~%2,1!"<nul|clip& goto :EOF
)
if /i %1==num2 (
    setlocal enabledelayedexpansion
    set nums=�ŢƢǢȢɢʢˢ̢͢΢ϢТѢҢӢ�
    if "%2"=="" set /p"=!nums!"<nul|clip& goto :EOF
    set nums= !nums!& set /p"=!nums:~%2,1!"<nul|clip& goto :EOF
)
if /i %1==num3 (
    setlocal enabledelayedexpansion
    set nums=��������������������������������
    if "%2"=="" set /p"=!nums!"<nul|clip& goto :EOF
    set nums= !nums!& set /p"=!nums:~%2,1!"<nul|clip& goto :EOF
)
::--����
if /i %1==up (
	set "word=%2"
	(%_call% ("word new_word") %_upcase%)
	set /p"=!new_word!"<nul|clip& goto :EOF
)
if /i %1==down (
	set "word=%2"
	(%_call% ("word new_word") %_downcase%)
	set /p"=!new_word!"<nul|clip& goto :EOF
)
::--ASCII
if /i %1==block (
	set num=%2
	(%_call% ("num numStr numLine") %_parseBlockNum%)
	(for /l %%i in (1,1,!numLine!) do echo.!numStr_%%i!)>%temp%\getBlock.txt& clip<%temp%\getBlock.txt& goto :EOF
)
if /i %1==ascii (
	set word=%2
	(%_call% ("word wordStr wordLine") %_parseASCIIStr%)
	(for /l %%i in (1,1,!wordLine!) do echo.!wordStr_%%i!)>%temp%\getAscii.txt& clip<%temp%\getAscii.txt& goto :EOF
)
::========================= ���� =========================





::========================= �ֻ�ftp =========================
if /i %1==mobile (
    if /i "%2"=="tasker" set /p"=/storage/sdcard0/Tasker"<nul|clip& goto :EOF
    if /i "%2"=="jietu" set /p"=/storage/sdcard0/Pictures/Screenshots"<nul|clip& goto :EOF
    if /i "%2"=="luyin" set /p"=/storage/sdcard0/Recordings"<nul|clip& goto :EOF
    if /i "%2"=="music" set /p"=/storage/sdcard1/music"<nul|clip& goto :EOF
    set /p"=/storage/sdcard0"<nul|clip& goto :EOF
)
::========================= �ֻ�ftp =========================







::========================= Java��� =========================
if /i %1==classTitle (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=-!
	call :getFace face
    goto :EOF   
)
::========================= Java��� =========================





::========================= ��˾1 =========================
if /i %1==myuserid echo 1000183|clip& goto :EOF
if /i %1==build echo start /D D:\depot\T8\main\java /B mvn -Dmaven.test.skip=true  clean package|clip& goto :EOF
if /i %1==75tomcat echo http://192.168.190.75/manager/html|clip& goto :EOF
if /i %1==posthistory echo SELECT * FROM posthistory WHERE userId = 1000183|clip& goto :EOF
if /i %1==connectorlog echo tail -f /home/eight/connector_log/connector.log -n 100|clip& goto :EOF
::========================= ��˾1 =========================



::========================= ��˾2 =========================
if /i %1==userid set /p"=tPmi84yAj8pv9vhWM"<nul|clip& goto :EOF
if /i %1==bushu (
	call :getCuteTipWord cuteTipWord
	set /p"=!cuteTipWord!����Ҫ������Ŀ��"<nul|clip& goto :EOF
)
::========================= ��˾2 =========================












::========================= ���� =========================
:guessKey
start "" tool_guessKey.bat "%~1" "%guessKeyFile%" %0
exit


:404
mode 30,7& title get
set numStr=404& set numStrPrefix=  
echo.
(%_call% ("numStr numStrPrefix") %_parseShowBlockNum2%)
timeout 2 >nul& exit



:getCuteTipWord
set cuteTipWord={^
	SIR���ոյõ���Ϣ������,^
	�ǣ������û�����㰡,^
	��Sir��,^
	��sir��������,^
	��������ʱ�䣬�ٲ���Ǯ��������,^
	��ʵ�����أ�����Ҫ���ǿ���,^
	�����죬������Ҫ����,^
	�ǣ�˵����,^
	��Ҷ��ǳ������ˣ���Щ�¡�������,^
	�о仰����֪��������,^
	���ϲ���Ŷ,^
	�߹���·����ע����,^
	���ϵ��߱���ע����,^
	������Ů����ע����,^
	�ⲻ����ϰ�ⲻ����ϰ,^
	�ʶ�����ּ,^
	�Ϸ�ү��ּ,^
	������������,^
	�ö���,^
	��ǰ���¹�,^
	������ô��,^
	��˭����,^
	�ҵĴ�������ؼ�,^
	�Բ������Ǿ���,^
	�Բ������Ǹ�NPC,^
	�Բ��������Ե�,^
	�Բ������Ǹ�Ұ��,^
	�Բ������Ǹ���,^
	����ǰû��ѡ������,^
	���������ģ���ʲô���Եġ��������Ұ�~~,^
	���Ҹ����ᣡ��ô������᣿,^
	д�˶θ��˵Ĵ���,^
	�������Ұ�,^
	��һ��coder������һ�����ԣ�������һ������,^
	�����һ�����������ô������һ��������㰡,^
	���ٵ�һ���ӣ�������һ����,^
	�Һ�̨���˵�,^
	�����뵽���������£����Ǻ���һ����������,^
	ɽ���⣬��غϣ��Ÿ�ȥ����,^
	���ϣ��㻹�ǵõ��꿵��Ԥ��Ĳ���𣿣�,^
	С���ӡ�С���ӡ�С���ӣ�������,^
	����Ļ��,^
	������������ɳ��ɳ�ޡ�Сħ�ɡ�ȫ���,^
	�����������������ࡪ����,^
	�����������������ȣ�ͣ,^
	��������������ɳ��³����,^
	�����������������رء�ת��,^
	��������������������������֮��,^
	������������������-����,^
	������������ɳ����-��,^
	��������������������ħ��Ь,^
	������������ѩ������ħ���⻷,^
	������������ľ��������,^
	������������������--ճ��ħ��,^
	����������������������,^
	����������---�ڶ�ɳ---����ħ��,^
	�����������������ޡ�ħ�ɰٱ���,^
	����������---ѩ����---ħ���⻷��,^
	����������---ľ����---����,^
	����������---����---ͣ��,^
	����������---ɳ��³---����,^
	����������---������---��ħ����ҩ��,^
	����������---������---ħ������������,^
	����������---ɳɳ����---ħ����ʾ����,^
	����������---��������---����ħ����,^
	����������---��������---����֮����,^
	����������---������---���ƣ�,^
	����������---������---������,^
	����������---�ڶ�ɳ---����ħ��,^
	����������---������---����ħ��,^
	����������---ѩ����--���,^
	����������---����---ħ��������,^
	������������������������ħ��ҩ��,^
	������������������������ħ���۾�,^
	��������������������ħ��Ь,^
	������������ѩ������ħ���⻷,^
	������������ľ��������,^
	����������-������--�Ƴ�ħ��,^
	����������---������---������,^
	����������---ͻ��ɳ---ħ����Զ��,^
	����������---ѩ����---ħ���⻷��,^
	����������---����---ͣ��,^
	����������---ɳ��³---����,^
	����������---ɳɳ����---ħ����ʾ��,^
	����������---��������---����ħ��,^
	����������---��������---����֮��,^
	����������---������---ħ����������,^
	����������---������---ħ�ɱ���,^
	�������������������ڡ�������ķ������ħ�ɽ�ҩ,^
	��������������������������,^
	�������ڰ�֮�񡪡���������������ħ��,^
	�������ڰ�֮��---��,^
	�������ڰ�֮��---����,^
	�������ڰ�֮�񣭶�����������,^
	�������ڰ�֮�񣭹ſ����ޣ��ڰ�����,^
	�������ڰ�֮�񡪺�����������,^
	�������ڰ�֮�񣭾�������������,^
	�������ڰ�֮���ں���������ħ����,^
	�������ڰ�֮�񣭱�����������ħ��,^
	�������ڰ�֮�񣭴�����������ħ����,^
	�������ڰ�֮�񡪻ָ�,^
	�������ڰ�֮�񡪺����������,^
	�������ڰ�֮�񡪺�������������,^
	�������ڰ�֮��--�ں�����--��ħ����,^
	�������ڰ�֮��--������--��,^
	�������ڰ�֮��--������--�ı�֮��,^
	�������ڰ�֮��--ɳ����--����ħ��,^
	�������ڰ�֮��--��������--��ħ��,^
	�������ڰ�֮��--��������--��ħ����,^
	�������ڰ�֮��--������--������,^
	�������ڰ�֮��--������--����,^
	�������ڰ�֮��--������--��ħ����,^
	�������ڰ�֮��--������--�ѿ�,^
	�������ڰ�֮��--�����--����,^
	�������ڰ�֮��--��ɳ����--Ӱ��ħ��,^
	�������ڰ�֮��--������--�ڶ���,^
	�������ڰ�֮��--��³��--��ʧ,^
	��Ȼ����ĳ��������ˣ�,^
	Ϊ�˷�ֹ���类�ƻ���,^
	Ϊ���ػ�����ĺ�ƽ��,^
	�����ϵ����ǰ���������������һ��а��������ս���������Ǿ������ǵ�˫�֣��͸���һЩԪ���ɡ�,^
	�����������������ȣ�,^
	�����ҵ����֣����ܿ��ƣ�,^
	����Ϊ��ĳ��Ŀ�Ķ������ģ��Ҽ��ţ����ű�����Ҫ��ʹ����,^
	��Ȼ�^
}
(%_call% ("cuteTipWord") %_parseArray%)
set /a cuteTipWordMax=!cuteTipWord.length!-1
(%_call% ("0 %cuteTipWordMax% cuteTipWordIndex") %_getRandomNum%)
set %1=!cuteTipWord[%cuteTipWordIndex%]!
goto :EOF



:getFace
set face1=("������)
set face2=(����)=͹
set face3=(���令)
set face4=(=���أ�=)
set face5=��( �� �� ��^|^|^|)��
set face6=(������)"
set face7=(�ţ�3��)��
set face8=(~������)~
set face9=(^>�n^<)
set face10=��ء�
set face11=*^_^*
set face12=T_T
set face13=-_-#
set face14=^^��^^
set face15=��_��
set face16=��_��
set face17=555~
set face18=�ݩn��
set face19=(^>_^<)
set face20=�Ѧء�
set face21=(^>�n^<)
set face22=(�s3�t)
set face23=(��ϡ�)
set face24=��n��
set face25=����
set face26=(=^.^=)
set face27=(=^��^=)
set face28=hehe~
set face29=-_-^|^|
set faceMaxIndex=29
(%_call% ("1 !faceMaxIndex! faceIndex") %_getRandomNum%)
set %1=!face%faceIndex%!
goto :EOF





:innerBat
set srcDir=%cd%
cd /d C:\path\bat\%~1
call %~2 %3 %4 %5 %6 %7 %8 %9
cd /d %srcDir%
goto :EOF
:outerBat
set path=C:\path\bat\%~1
start /min /i /d %path% %~2 %3 %4 %5 %6 %7 %8 %9
goto :EOF
::========================= ���� =========================