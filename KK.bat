@if (@CodeSection == @Batch) @then
@echo off
    set SendKeys=CScript //nologo //E:JScript "%~F0"
    cls
    color 0a
	    timeout /t 3 /nobreak >nul
    
	:startloop
	
	TIMEOUT /t 900
	
	%SendKeys% {K}
    %SendKeys% {K}
	
	goto startloop
	
@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
