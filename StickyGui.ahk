Build_Stickynote_GUI(NoteName,NoteFile)
{
	global SNB
	global SNT
	global SNX
	FileRead, StickyBody, %U_NotePath%%NoteFile%
	Gui, %NoteName%:-Caption +ToolWindow
	Gui, %NoteName%:
	Gui, %NoteName%:Margin , 0, 0 
	Gui, %NoteName%:Font, s%SearchFontSize% Q%FontRendering%, %SearchFontFamily%, %U_MFC%
	Gui, %NoteName%:Color,%U_SBG%, %U_MBG%
	Gui, %NoteName%:add, text, center vSNT  GuiMove x0 y0 h20 w230,%NoteName%
	Gui, %NoteName%:add, text, center vSNX gXsticky x+0 y0 h20 w20,X
	Gui, %NoteName%:add, edit, -Tabstop readonly w270 -E0x200 x0 vSNB  h100,%StickyBody%
	;WinSet, Style,  -0xC00000,%NoteName%
	Gui, %NoteName%:show, w250
	return
}