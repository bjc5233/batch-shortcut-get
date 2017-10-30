@echo off& call load.bat _parseBlockNum _parseShowBlockNum2 _parseASCIIStr _getRandomNum _parseArray _parseJSON _downcase _upcase& setlocal enabledelayedexpansion
::说明
::  复制指定文本到剪切板
::  输入为空时更新key文本
::  找不到对应的界面时, 会根据当前输入key和key文本进行字符串相似度比较, 提供建议
::对比do.bat\get.bat
::  do.bat 侧重处理逻辑, 最后可以展示一份结果说明, 也可以没有任何提示
::  get.bat侧重文本数据到剪切板, 可以有处理逻辑, 但看重最后产生的数据
::注意
::使用echo abc|clip, 会多出一个换行符, 因为echo输出会添加上换行符
::使用set /p"=abc"<nul可以消除换行符
set guessKeyFile=getKey.txt
if "%1"=="" (
    (for /f "tokens=1-4 delims== " %%i in (%~f0) do if "%%i %%j %%k"=="if /i %%1" echo %%l)>%guessKeyFile%
    exit
)
call tool_backupClip.bat



::========================= 生活 =========================
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
	set "fozu21=         佛祖保佑       永无BUG"
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
	::当安装vmware等时, 会有多个网络适配器配置, 默认以第一个作为本地连接
	for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findStr "IPv4 地址"') do (
		set IP=%%i& set IP=!IP:~1!
		set /p"=!IP!"<nul|clip
		echo.& echo.& echo !IP!& echo [已复制到剪贴板]& pause>nul
	)
)

::--日期时间
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
::--星星
if /i %1==star set /p"=☆"<nul|clip& goto :EOF
if /i %1==star2 set /p"=★"<nul|clip& goto :EOF
if /i %1==stars (
    setlocal enabledelayedexpansion
    set star1=★★★★★
    set star2=☆☆☆☆☆
    if "%2"=="" (set num1=1) else (set num1=%2)
	set /a num2=5-num1
	for %%i in (!num1!) do set star1=!star1:~0,%%i!
	for %%i in (!num2!) do set star2=!star2:~0,%%i!
	set /p"=!star1!!star2!"<nul|clip& goto :EOF
)
if /i %1==ok set /p"=√"<nul|clip& goto :EOF
if /i %1==dui set /p"=√"<nul|clip& goto :EOF
if /i %1==gou set /p"=√"<nul|clip& goto :EOF
if /i %1==cuo set /p"=x"<nul|clip& goto :EOF
if /i %1==cha set /p"=x"<nul|clip& goto :EOF
if /i %1==127 set /p"=127.0.0.1"<nul|clip& goto :EOF
::--数字
if /i %1==num (
    setlocal enabledelayedexpansion
    set nums=①②③④⑤⑥⑦⑧⑨⑩
    if "%2"=="" set /p"=!nums!"<nul|clip& goto :EOF
    set nums= !nums!& set /p"=!nums:~%2,1!"<nul|clip& goto :EOF
)
if /i %1==num2 (
    setlocal enabledelayedexpansion
    set nums=⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃
    if "%2"=="" set /p"=!nums!"<nul|clip& goto :EOF
    set nums= !nums!& set /p"=!nums:~%2,1!"<nul|clip& goto :EOF
)
if /i %1==num3 (
    setlocal enabledelayedexpansion
    set nums=⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗
    if "%2"=="" set /p"=!nums!"<nul|clip& goto :EOF
    set nums= !nums!& set /p"=!nums:~%2,1!"<nul|clip& goto :EOF
)
::--工具
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
::========================= 生活 =========================





::========================= 手机ftp =========================
if /i %1==mobile (
    if /i "%2"=="tasker" set /p"=/storage/sdcard0/Tasker"<nul|clip& goto :EOF
    if /i "%2"=="jietu" set /p"=/storage/sdcard0/Pictures/Screenshots"<nul|clip& goto :EOF
    if /i "%2"=="luyin" set /p"=/storage/sdcard0/Recordings"<nul|clip& goto :EOF
    if /i "%2"=="music" set /p"=/storage/sdcard1/music"<nul|clip& goto :EOF
    set /p"=/storage/sdcard0"<nul|clip& goto :EOF
)
::========================= 手机ftp =========================







::========================= Java相关 =========================
if /i %1==classTitle (
    setlocal enabledelayedexpansion
    set date=%date:~0,10%
    set date=!date:/=-!
	call :getFace face
    goto :EOF   
)
::========================= Java相关 =========================





::========================= 公司1 =========================
if /i %1==myuserid echo 1000183|clip& goto :EOF
if /i %1==build echo start /D D:\depot\T8\main\java /B mvn -Dmaven.test.skip=true  clean package|clip& goto :EOF
if /i %1==75tomcat echo http://192.168.190.75/manager/html|clip& goto :EOF
if /i %1==posthistory echo SELECT * FROM posthistory WHERE userId = 1000183|clip& goto :EOF
if /i %1==connectorlog echo tail -f /home/eight/connector_log/connector.log -n 100|clip& goto :EOF
::========================= 公司1 =========================



::========================= 公司2 =========================
if /i %1==userid set /p"=tPmi84yAj8pv9vhWM"<nul|clip& goto :EOF
if /i %1==bushu (
	call :getCuteTipWord cuteTipWord
	set /p"=!cuteTipWord!，我要部署项目啦"<nul|clip& goto :EOF
)
::========================= 公司2 =========================












::========================= 公共 =========================
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
	SIR，刚刚得到消息。。。,^
	那，别怪我没提醒你啊,^
	啊Sir啊,^
	阿sir，相信我,^
	给你三天时间，再不还钱。。。。,^
	其实做人呢，最重要的是开心,^
	出来混，迟早是要还的,^
	那，说好了,^
	大家都是成年人了，有些事…………,^
	有句话，不知当不当讲,^
	哎呦不错哦,^
	走过的路过的注意啦,^
	闯南的走北的注意啦,^
	男人们女人们注意啦,^
	这不是演习这不是演习,^
	皇额娘有旨,^
	老佛爷有旨,^
	今天天气不错,^
	好饿啊,^
	床前明月光,^
	世界那么大,^
	有谁饿了,^
	我的代码加了特技,^
	对不起我是警察,^
	对不起我是个NPC,^
	对不起我是卧底,^
	对不起我是个野怪,^
	对不起我是个塔,^
	我以前没的选择，现在,^
	我是新来的，有什么不对的。你来打我啊~~,^
	给我个机会！怎么给你机会？,^
	写了段感人的代码,^
	别拦着我啊,^
	有一个coder，他有一点任性，他还有一点嚣张,^
	测服，一个破碎的我怎么来部署一个破碎的你啊,^
	我再等一分钟，或许下一分钟,^
	我后台有人的,^
	我能想到最浪漫的事，就是和你一起慢慢部署,^
	山无棱，天地合，才敢去部署！,^
	皇上！你还记得当年康大预诊的测服吗？？,^
	小桌子、小凳子、小椅子，快起来,^
	我屏幕大,^
	巴啦啦能量—沙罗沙罗—小魔仙—全身变,^
	巴拉拉能量—罗拉多—盾牌,^
	巴啦啦能量－他拉娜－停,^
	巴拉拉能量—华沙加鲁—起,^
	巴拉拉能量—哗哗必必—转移,^
	巴拉拉能量—法拉法依—消除之术,^
	巴啦啦能量—鸣啦呜-旋风,^
	巴啦啦能量—沙罗吐-动,^
	巴啦啦能量—乌特拉—魔法鞋,^
	巴啦啦能量－雪妮拉－魔法光环,^
	巴啦啦能量－木啦啦－开,^
	巴啦啦能量—他多啦--粘贴魔法,^
	巴啦啦能量—卡啦啦—亮,^
	巴啦啦能量---乌多沙---跟踪魔法,^
	巴啦啦能量—古拉罗—魔仙百宝书,^
	巴啦啦能量---雪妮啦---魔法光环！,^
	巴啦啦能量---木啦啦---开！,^
	巴啦啦能量---他啦---停！,^
	巴啦啦能量---沙罗鲁---动！,^
	巴啦啦能量---啦吧啦---赐魔仙灵药！,^
	巴啦啦能量---乌特啦---魔仙力量提升！,^
	巴啦啦能量---沙沙卡拉---魔仙显示器！,^
	巴啦啦能量---卡拉卡奇---传声魔法！,^
	巴啦啦能量---法啦法依---消除之术！,^
	巴啦啦能量---罗啦多---盾牌！,^
	巴啦啦能量---哗哗必---日批拉,^
	巴啦啦能量---乌多沙---跟踪魔法,^
	巴啦啦能量---多拉多---泡泡魔法,^
	巴啦啦能量---雪尼拉--解除,^
	巴啦啦能量---他他---魔仙能量盒,^
	巴拉拉能量——拉巴拉——魔仙药粉,^
	巴拉拉能量——呼尼拉——魔仙眼镜,^
	巴啦啦能量—乌特拉—魔法鞋,^
	巴啦啦能量－雪妮拉－魔法光环,^
	巴啦啦能量－木啦啦－开,^
	巴啦啦能量-拉得拉--破除魔法,^
	巴啦啦能量---他尼尼---光能量,^
	巴啦啦能量---突托沙---魔仙望远镜,^
	巴啦啦能量---雪妮啦---魔法光环！,^
	巴啦啦能量---他啦---停！,^
	巴啦啦能量---沙罗鲁---动！,^
	巴拉拉能量---沙沙卡拉---魔线显示器,^
	巴啦啦能量---卡拉卡奇---传声魔法,^
	巴啦啦能量---法拉法依---消除之术,^
	巴啦啦能量---乌特拉---魔仙力量提升,^
	巴啦啦能量---呼尼拉---魔仙变身,^
	巴拉拉能量——呜啦乌——鸣拉姆——赐魔仙解药,^
	巴啦啦能量——乌他——净化,^
	古娜拉黑暗之神——呼呼拉——黑仙魔光,^
	古娜拉黑暗之神---变,^
	古娜拉黑暗之神---出击,^
	古娜拉黑暗之神－多素拉－火焰,^
	古娜拉黑暗之神－古卡拉罗－黑暗提琴,^
	古娜啦黑暗之神—呼啦呼啦—变,^
	古娜拉黑暗之神－竟拉拉－黑旋风,^
	古娜拉黑暗之神—乌呼拉呼—黑魔变身,^
	古娜拉黑暗之神－彼拉呼啦－黑魔锁,^
	古娜拉黑暗之神－达啦古啦－黑魔传书,^
	古娜拉黑暗之神—恢复,^
	古娜拉黑暗之神—汉索拉—狂风,^
	古娜拉黑暗之神—呼卡拉—黑气功,^
	古娜拉黑暗之神--乌呼啦呼--黑魔变身,^
	古娜拉黑暗之神--古罗尼--动,^
	古娜拉黑暗之神--扑啦啦--改变之术,^
	古娜拉黑暗之神--沙卡拉--移行魔法,^
	古娜拉黑暗之神--乌拉乌拉--黑魔箭,^
	古娜拉黑暗之神--达拉古拉--黑魔传书,^
	古娜拉黑暗之神--他拉奇--黑能量,^
	古娜拉黑暗之神--哆嗦啦--火焰,^
	古娜拉黑暗之神--呼呼啦--黑魔极光,^
	古娜拉黑暗之神--古他啦--裂开,^
	古娜拉黑暗之神--科尼多--攻击,^
	古娜拉黑暗之神--拉沙卡拉--影子魔法,^
	古娜拉黑暗之神--他拉古--黑动能,^
	古娜拉黑暗之神--多鲁多--消失,^
	既然你诚心诚意的请教了！,^
	为了防止世界被破坏！,^
	为了守护世界的和平！,^
	地球上的人们啊，我现在正在与一个邪恶的生物而战斗，请你们举起你们的双手，赐给我一些元气吧。,^
	这个世界就由我来拯救！,^
	啊！我的右手！不受控制！,^
	人是为了某种目的而降生的，我坚信，活着便有重要的使命。,^
	你等会^
}
(%_call% ("cuteTipWord") %_parseArray%)
set /a cuteTipWordMax=!cuteTipWord.length!-1
(%_call% ("0 %cuteTipWordMax% cuteTipWordIndex") %_getRandomNum%)
set %1=!cuteTipWord[%cuteTipWordIndex%]!
goto :EOF



:getFace
set face1=("▔□▔)
set face2=(︶︿︶)=凸
set face3=(ΘｏΘ)
set face4=(=￣ω￣=)
set face5=Σ( ° △ °^|^|^|)︴
set face6=(￣▽￣)"
set face7=(づ￣3￣)づ
set face8=(~￣▽￣)~
set face9=(^>﹏^<)
set face10=●ω●
set face11=*^_^*
set face12=T_T
set face13=-_-#
set face14=^^ω^^
set face15=←_←
set face16=→_→
set face17=555~
set face18=≥﹏≤
set face19=(^>_^<)
set face20=⊙ω⊙
set face21=(^>﹏^<)
set face22=(╯3╰)
set face23=(°ο°)
set face24=●﹏●
set face25=●︿●
set face26=(=^.^=)
set face27=(=^ω^=)
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
::========================= 公共 =========================