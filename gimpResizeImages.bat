setlocal EnableDelayedExpansion
Set PATH="C:\program files\gimp 2\bin\"
FOR /f "tokens=*" %%G IN ('dir /b /s /a:d "."') DO (
	set variable=%%G
	set new=!variable:\=\\!
	%PATH%gimp-console-2.8.exe -b "(gimpResize \"!new!\\*.png\" 32 32)" -b "(gimp-quit 0)"
)
ENDLOCAL