#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F8::
MouseGetPos, xpos, ypos 
Tooltip , X=%xpos% Y=%ypos%,
SetTimer, RemoveToolTip, -10000
return

RemoveToolTip:
Tooltip
Return

/*
F11::
gui, add, Text,, Сколько волокон на одной волне
gui, add, edit, vVol
loop, vVol
{
summ++
MouseClick, left, 1505, 496, 1, 1
Send, {right}%summ%{right 8}{enter}{delete}AE1001{right}{enter}{delete}3005203400{right}{enter}{delete}{right}{enter}{delete}{right}{enter}{delete}{right}{enter}{delete}{right}{enter}{delete}
MouseClick, left, 1400, 827, 1, 1
Send, {down 2}
}
return
*/

F10::
summ := 0
return

F4::
Send, {enter}{delete}AE1001{right}{enter}{delete}3005203400{right}
Return

^d::
Send, +^{left 3}{delete}{right}{Enter} ; удаляет текст на месте Многомода
Return


F11::
loop, 8
{
summ++
MouseClick, left, 1505, 496, 1, 1
Send, {right}%summ%{right 8}{enter}{delete}AE1001{right}{enter}{delete}3005203400{right}{enter}{delete}{right}{enter}{delete}{right}{enter}{delete}{right}{enter}{delete}{right}{enter}{delete}
MouseClick, left, 1400, 827, 1, 1
Send, {down 2}
}
return
