#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/*
NumpadDot:: ;Старый код на точку
Send, .
return
*/

F12:: Suspend, Toggle

SendMode, InputThenPlay
$vk6E:: ; клавиша точки/Del на NumPad = точка
EngAction = {vkBE} ; при ENG расскладке
RusAction = {vkBF} ; при RUS расскладке
GoTo, LookLanguage

LookLanguage:
Locale1=0x4090409 ; ENG
Locale2=0x4190419 ; RUS
WinGet, WinID,, A
ThreadID:=DllCall("GetWindowThreadProcessId", "Int", WinID, "Int", "0")
InputLocaleID:=DllCall("GetKeyboardLayout", "Int", ThreadID)
if(InputLocaleID=Locale1) ;если ENG
Send %EngAction%
else if(InputLocaleID=Locale2) ;если RUS
Send %RusAction%
Return

+3::
Send, {#}
return

^t::
Send, 0{Tab}0{Enter}25.5{Enter}0{Enter}
return


::фп::ф/потолком
::обмтс::Оборудование ПАО "МТС"
::обкл::Оборудование Клиента
::сущл::По сущ. лотку

::письморд::Добрый день, высылаю рабочую документацию на согласование.{Enter}{Enter}Прошу подписать лист согласования (ср. 3) и отправить ответным письмом в отсканированном виде.

::сег:: ;Сегодняшняя дата
SendInput -%A_DD%-%A_MM%-%A_YYYY%
return

::мвок::NL-OK-FTTH-8A-M2
::мвокнг::ОТЦН-8А-2,7 (2,7кН) LS-HF
::ммедь::UTP 4x2 cat 5е

::исп::ИСПОЛНИТЕЛЬНАЯ ДОКУМЕНТАЦИЯ

::в16::ВОК-16{Enter}м{Home}
::в8::ВОК-8{Enter}м{Home}

::окс::Оптический кросс стоечный КРУС-8
::окн::Оптический кросс настенный КРУН-8

::топорд::Проект строительства кабельной канализации на топографической съемке. (М1500)

::авг::августа
::сен::сентября
::окт::октября
::ноя::ноября

::b::B:
::st::ST:
::t::T:
::bt::BT: