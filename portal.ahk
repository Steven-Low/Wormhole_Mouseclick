IfNotExist, pic1.png
  FileInstall, "C:\Users\2002l\Documents\Codes\Ahk Workspace\pic1.png", pic1.png
SetBatchLines, -1

IfNotExist, pic2.png
  FileInstall, "C:\Users\2002l\Documents\Codes\Ahk Workspace\pic2.png", pic2.png
SetBatchLines, -1

Gui, One: +AlwaysOnTop +LastFound -Caption +ToolWindow 
WinSet, Transcolor, 0x111111 100
Gui, One:Margin,0,0
Gui, One:Font, s40 Bold Center, Consolas
Gui, One:Add, Button, x12 y12 w25 h25 Gdragon,
Gui, One:Color, 0x111111 ; this color has been transparented
Gui, One:Add,Picture,x0 y0 w50 h50 +BackgroundTrans Center GuiMove,pic1.png
Gui, One:Show,

Gui, Two: +AlwaysOnTop +LastFound -Caption +ToolWindow 
WinSet,Transcolor, 0xFFFFFF 126
Gui, Two:Margin,0,0
Gui, Two:Font, s40 Bold Center, Consolas
;Gui, Two:Add, Button, x12 y12 w25 h25 Gdragon,
Gui, Two:Color, 0xffffff ; this color has been transparented
Gui, Two:Add,Picture,x0 y0 w50 h50 +BackgroundTrans Center GuiMove,pic2.png
Gui, Two:Show,
return

uiMove:
PostMessage, 0xA1, 2,,, A 
Return

GuiClose:
GuiContextMenu:
*ESC::ExitApp

dragon:
Gui, Two: +LastFound
WinGetPos,x,y,w,h
x := x+38
y := y+38
;MsgBox, %x% - %y% - %w% - %h%
CoordMode, Mouse, Screen
MouseGetPos, xp, yp
MouseClick,left,x,y,,0
MouseMove, xp, yp, 0


return
