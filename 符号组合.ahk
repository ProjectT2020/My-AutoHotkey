;-------- Numpad Simulate --------
#Persistent
a := StrSplit(c:="basdfgzxcvqwer ytmjkluio789;p0")
b := StrSplit("0123456789+-*/=,.0123456789+-*")
fn:= Func("n")
n(){
global flag
return flag
}
Hotkey, if, % fn
Loop % a.length()
Hotkey, % a[A_Index], SendKey
return
\ & Space::Goto,NumPadSimulate 
CapsLock & Space::Goto,NumPadSimulate
NumPadSimulate:
if(!flag){
ToolTip,--------- NumPad Simulating ---------------- NumPad Simulating --------------- NumPad Simulating --------,200,0
}else{
ToolTip
}
Send, {ScrollLock}
flag := !flag
return
SendKey:
If % b[InStr(c, A_ThisHotkey)]!="+"
	Send, % b[InStr(c, A_ThisHotkey)]
else
	Send,{NumpadAdd}
return
;Use <,> as a modify key to input numbers and F1~F6 key---------------
, & F1::MsgBox Key , has been used as a prefix key
;`; & F1::MsgBox Key `; has been used as a prefix key

*,::Send {Blind}{,}
;`;::`;
*`;::Send {Blind}{`;}
`;::Send,`;
;#If GetKeyState("`;","p")|GetKeyState(",","p")
#If GetKeyState(",","p")
Tab::+6
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
q::NumpadAdd
w::-
e::NumpadMult
r::NumpadDiv
t::_
CapsLock::send,``
a::1
s::2
d::3
f::4
g::5
z::6
x::7
c::8
v::9
b::0
.::.
m::,
Space::=
#If
;Use <`> as a modify key to reSize window or Move 
`::Send,``
*`::Send,{Blind}{``}
`; & l::
WinGetActiveStats,Title,Width,Height,X,Y
CoordMode,mousemove,Relative
mousemove,Width/2,Height/2
return
`; & h::
CoordMode,Mouse,screen
mousemove,A_ScreenWidth/4,A_ScreenHeight/2
return
`; & o::
CoordMode,Mouse,Screen
mousemove,A_ScreenWidth/4*3,A_ScreenHeight/2
return
`; & .::
CoordMode,Mouse,Screen
mousemove,A_ScreenWidth/4*5,A_ScreenHeight/2
return
`; & m:: Click
`; & ,:: RButton
`; & j:: WheelDown
`; & k:: WheelUp
`; & i::Goto,ExitPosition
` & 3::Goto,ExitPosition
ExitPosition:
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,Width-30,20
return
`; & u::WindowMenu()
WindowMenu(){
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,30,20
Click
return
}
` & 1::
WindowMenu()
Send,{m}{Up}
Send,{Alt Down}{Space}{Alt Up}{m}{Up} 
return
` & q::
WindowMenu()
Send,{s}{Left}{Up}
Send,{Alt Down}{Space}{Alt Up}{s}{Left}{Up}
Return
` & w::
WindowMenu()
Send,{s}{Right}{Up}
Send,{Alt Down}{Space}{Alt Up}{s}{Right}{Up}
Return
` & s::
WindowMenu()
Send,{s}{Right}{Down}
Send,{Alt Down}{Space}{Alt Up}{s}{Right}{Down}
Return
` & a::
WindowMenu()
Send,{s}{Left}{Down}
Send,{Alt Down}{Space}{Alt Up}{s}{Left}{Down}
Return
;Use </> as a modify key to change directory in Bash shell------------------
;Bash's key map should be emacs
/ & F1::MsgBox Key / has been used as a prefix key
+/::+/
/::Send,{/}
#If GetKeyState("/","p")
r::Send,{End}^{u}cd /;ls{Enter} ;root 
b::Send,{End}^{u}cd ..;pwd;ls{Enter} ;parent 
h::Send,{End}^{u}cd ~;pwd;ls{Enter} ;home 
p::Send,{End}^{u}cd -;pwd;ls{Enter} ;cd -:Move to the previous dir
s::Send,{End}^{u}pwd;ls {Enter} ;ls 
c::Send,{Home}cd {Enter}pwd;ls{Enter} ;enter a dir
+C::Send,^{w}mkdir ^{y};cd ^{y};pwd{Enter} ;create and enter a dir
#If
;Use </> or <,> as a modify key to input some symbol ------------------
. & F1::MsgBox Key . has been used as a prefix key
+.::+.
*.::Send {Blend}{.}
^.::^.
#If GetKeyState(".","p")
CapsLock::Send,{Shift down}``{Shift up}
1::#1
2::#2
3::#3
4::#4
5::#5
a::+1
s::+2
d::+3
f::+4
g::+5
z::+6
x::+7
c::+8
v::+9
b::+0
e::[
r::]
q::+[
w::+]
/::Send,./
#If
;Use <\> as a modify key to run A Program----------------
+\::Send,+\
\::send,\
\ & ]::winset,AlwaysOnTop,,A
\ & [::winset,Bottom,,A
\ & w::run, winword
\ & v::run, "C:\Program Files (x86)\Vim\vim82\vim.exe" 
\ & e::run, excel
\ & a::
run, "C:\Program Files (x86)\ArcGIS\Desktop10.2\bin\ArcMap.exe"
Msgbox,4096,AutoHotKey 快捷启动 应用程序,ArcMap 正在启动,1
Return
\ & c::run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
\ & d::run, "C:\Program Files (x86)\GoldenDict\GoldenDict.exe"
\ & m::run, "D:\Program Files\UWP\QQMusic.lnk"
\ & o::run, "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
\ & =::run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\GNU Octave 5.2.0\Octave-5.2.0 (CLI).lnk"
\ & q::run, "D:\Program Files\UWP\QQ.lnk"
\ & p::run, py
\ & n::run, notepad
;--------Media Window Control and CapsLock to Esc----------------
Esc::Esc
Esc & Space::Media_Play_Pause

CapsLock & f::LButton
Esc & F1::LButton
CapsLock & x::RButton
CapsLock & v::Click,2
Esc & `::
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,30,20
Click
return
Esc & 1::
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,Width-30,20
return

Esc & Left::
WinRestore,A
WinMove,A,,0,0
WinMaximize,A
Return
Esc & Right::
WinRestore,A
WinMove,A,,A_ScreenWidth/4*5,0
WinMaximize,A
Return
CapsLock & [::Send, {Esc}
CapsLock & Enter::^Enter
;-------- Move around with CapsLock --------
CapsLock & i::Up
CapsLock & k::Down
CapsLock & j::Left
CapsLock & u::^Left
CapsLock & l::Right
CapsLock & o::^Right
CapsLock & h::Home
CapsLock & `;::End
CapsLock & y::PgUp
CapsLock & p::PgDn
CapsLock & e::Enter
CapsLock & d::Delete
CapsLock & 4::BackSpace


;-------- Select with CapsLock----
#if Getkeystate("Shift","p")
CapsLock & i::Send,+{Up}
CapsLock & k::Send,+{Down}
CapsLock & j::Send,+{Left}
CapsLock & l::Send,+{Right}
CapsLock & u::Send,^+{Left}
CapsLock & o::Send,^+{Right}
CapsLock & h::Send,+{Home}
CapsLock & `;::Send,+{End}
CapsLock & y::Send,+{PgUp}
CapsLock & p::Send,+{PgDn}
#if
;-------- Delete with CapsLock--------
CapsLock & ,:: Send, {Del}              ; , = Del char after
CapsLock & .:: Send, ^{Del}             ; . = Del word after
CapsLock & /:: Send, +{End}{Del}        ; / = Del all  after
CapsLock & m:: ^m
CapsLock & n:: Send, ^{BS}              ; n = Del word before
CapsLock & b:: Send, +{Home}{Del}       ; b = Del all  before
;-------- Mouse --------
ScrollLock::LButton
Pause::RButton
global flag_m:=0
CapsLock & 2::
flag_m:=0
ToolTip
Return
CapsLock & 3::
flag_m:=1
global mousemovestep:=100
ToolTip,--------- Mouse Simulating ---------------- Mouse Simulating --------------- Mouse Simulating --------,200,0
Return
#If flag_m==1
f::LButton
d::Rbutton
a::MButton
s::WheelDown
w::WheelUp
`::mousemovestep:=1
1::mousemovestep:=16
2::mousemovestep:=64
3::mousemovestep:=256
4::mousemovestep:=1024
5::mousemovestep:=4096
Up::mousemove,0,-mousemovestep,0,R
Down::mousemove,0,mousemovestep,0,R
Left::mousemove,-mousemovestep,0,0,R
Right::mousemove,mousemovestep,0,0,R
q::
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,Width/2,Height/2
return
r::
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,Width-30,20
return
e::
WinGetActiveStats,Title,Width,Height,X,Y
mousemove,30,20
return
#If
;-------- N time of Tabs --------
#If GetKeyState("Tab","p")
2::Send,{Tab}
3::Send,{Tab}{Tab}
4::Send,{Tab}{Tab}{Tab}
5::Send,{Tab}{Tab}{Tab}{Tab}
;-------- N times of Arrow Key --------
#If
AppsKey::AppsKey
AppsKey & Up::Send,{Up 10}
AppsKey & Down::Send,{Down 10}
AppsKey & Left::Send,{Left 10}
AppsKey & Right::Send,{Right 10}
;-------- Volume and Brightness --------
AppsKey & F7::Send,{Volume_Up 5}		;Volume Value plus 10
AppsKey & F6::Send,{Volume_Down 5}		;Volume Value minus 10
AppsKey & PgUp::
Send, #a
sleep,100
Send,{Shift down}{Tab}{Shift up}{Up 10}
return
AppsKey & PgDn::
Send, #a
sleep,100
Send,{Shift down}{Tab}{Shift up}{Down 10}
return
;-------- Mouse Key Remap --------
XButton2::Shift
;-------- Open with gVim easy --------
AppsKey & v::
send ^c
sleep,200
run, "C:\Program Files (x86)\Vim\vim82\gvim.exe" "%clipboard%"
return
;-------- Copy as Path --------
^!c::
send ^c
sleep,300
clipboard = %clipboard%
tooltip,Copying: %clipboard%
sleep,800
tooltip,
return
;-------- Trivial Things --------
#If GetKeyState("Shift","p")
Capslock & /::Send,{\}
#If
;-------- task Bar Hide and Show --------
Esc & Down::
WinHide ahk_class Shell_TrayWnd
Return
Esc & Up::
WinShow ahk_class Shell_TrayWnd
Return

#If
;-------- Suspend the Script --------
^!s::Suspend  ; Assign the toggle-suspend function to a hotkey.
;-------- Disable Keyboard and Exit the Script--------
\ & Esc::ExitApp
