@echo off& call lib\loadE.bat winclip
::���ݵ�ǰ���а�����
::    ��get.bat�Ƚű��л���д���а�, ��ֹ��Ҫ���ݶ�ʧ
::    ÿ����ഴ��һ���ļ�
set fileName=%date:~0,10%
set fileName=%fileName:/=%
echo ---------------%time%--------------->>%temp%\clip%fileName%.txt
%winclip% -w -p>>%temp%\clip%fileName%.txt
echo.>>%temp%\clip%fileName%.txt