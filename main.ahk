#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
a := StrSplit(c:="nm,.jkluiop098'yh")
b := StrSplit("0123456789+-*/=,. ")
fn:= Func("n")
n(){
global flag
return flag
}
Hotkey, if, % fn
Loop % a.length()
Hotkey, % a[A_Index], SendKey
return
CapsLock & n::
flag := !flag
return
SendKey:
If % b[InStr(c, A_ThisHotkey)]!="+"&&b[InStr(c, A_ThisHotkey)]!=" "
Send, % b[InStr(c, A_ThisHotkey)]
else
	If % b[InStr(c, A_ThisHotkey)]==" "
	Send,{Enter}
	else
	Send,{NumpadAdd}
return
`::Esc
CapsLock & Tab::
    MouseGetPos,x,y,
    Send,{Click,30,20,Client}
    MouseMove,x,y,Client
return
$`;::send,`;
`; & F1::Return
*`;::Send {Blind}{`;} ; Send it explicitly when no other key is pressed before letting go, including any modifiers being held--------
#If GetKeyState("`;", "p") ; Autohotkey_L directive for enabling following mappings when key is physically down-----------------
Tab::+6
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
CapsLock::Send {Blind}{Text}``
q::NumpadAdd
w::-
e::NumpadMult
r::NumpadDiv
t::_
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
Space::=

#If	;--------------------------------
$/::send,/
/ & F1::Return
*/::Send {Blind}{/} ; Send it explicitly when no other key is pressed before letting go, including any modifiers being held	----------
#If GetKeyState("/", "p") ; Autohotkey_L directive for enabling following mappings when key is physically down	---------------------
CapsLock::Send,{Shift down}``{Shift up}
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
q::[
w::]
e::+[
r::+]
t::+-
Space::=
.::Esc
#If		;---------------
CapsLock & i::Up
CapsLock & k::Down
CapsLock & j::Left
CapsLock & l::Right
CapsLock & u::Home
CapsLock & o::End
CapsLock & y::PgUp
CapsLock & h::PgDn
CapsLock & d::Delete
CapsLock & b::BackSpace
CapsLock & e::Enter
CapsLock & '::Esc
CapsLock & r::^r	;--------------
CapsLock & f::^f
CapsLock & w::^w
CapsLock & s::^s
CapsLock & x::^x
CapsLock & c::^c
CapsLock & v::^v

CapsLock & m::[
CapsLock & ,::]
CapsLock & .::\
CapsLock & /::|
CapsLock & BackSpace::^BackSpace

#If Getkeystate("Ctrl","p")
CapsLock & j::^Left
CapsLock & l::^Right
CapsLock & u::^Home
CapsLock & o::^End
CapsLock & d::^Delete
CapsLock & b::^BackSpace

^!s::Suspend  ; Assign the toggle-suspend function to a hotkey.

