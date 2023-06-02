#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

arr := ["0.01","0.02","0.03"]

^r::
loop 8
{
send, +^{left 3}
Random, MyVar, 1, 4
sendinput % arr[MyVar] 
send, {down 1}
}
Return