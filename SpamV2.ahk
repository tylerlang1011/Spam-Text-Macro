#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F1::   ;on/off switch
SendActive := !SendActive 

If (SendActive){	
	SetTimer SendIt, 60000               ;sends text message every 100ms
	SetTimer SendEnter, 60000      ;starts a new line/ sends text every 1000ms
}else{
	SetTimer SendIt, Off
	SetTimer SendEnter, Off
}return

SendIt:
	Send,  aye ;text to be spammed
Return

SendEnter:
	Send {Enter}
return


; joe - <@95154702898966528>
; me - <@280890273993588738>

