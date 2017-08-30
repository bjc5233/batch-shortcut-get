@echo off& call lib\loadE.bat winclip
::备份当前剪切板数据
::    在get.bat等脚本中会重写剪切板, 防止重要数据丢失
::    每天最多创建一个文件
set fileName=%date:~0,10%
set fileName=%fileName:/=%
echo ---------------%time%--------------->>%temp%\clip%fileName%.txt
%winclip% -w -p>>%temp%\clip%fileName%.txt
echo.>>%temp%\clip%fileName%.txt