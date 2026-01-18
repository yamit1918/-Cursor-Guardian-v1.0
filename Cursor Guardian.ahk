; ==============================================================================
; PROJECT: The Cursor Guardian (Stability Version)
; DESCRIPTION: Managed via System Tray. No Hotkeys. No Splash.
; ==============================================================================

#NoEnv
#SingleInstance Force
#Persistent

; --- INITIALIZATION ---
global Threshold   := 4
global EdgePadding := 50
global KeysPressed := 0

; --- TRAY MENU SETUP ---
Menu, Tray, NoStandard 
Menu, Tray, Add, Sensitivity: High (2 Keys), SetHigh
Menu, Tray, Add, Sensitivity: Medium (4 Keys), SetMed
Menu, Tray, Add, Sensitivity: Low (8 Keys), SetLow
Menu, Tray, Add ; --- Separator ---
Menu, Tray, Add, Pause Guardian, TogglePause
Menu, Tray, Add, Reload Script, ReloadScript
Menu, Tray, Add, Exit, QuitScript
Menu, Tray, Tip, Cursor Guardian Active
Menu, Tray, Default, Sensitivity: Medium (4 Keys)

return ; End of Auto-Execute Section

; --- TRAY FUNCTIONS ---

SetHigh:
    Threshold := 2
    TrayTip, Guardian, Sensitivity: High (2), 1
return

SetMed:
    Threshold := 4
    TrayTip, Guardian, Sensitivity: Med (4), 1
return

SetLow:
    Threshold := 8
    TrayTip, Guardian, Sensitivity: Low (8), 1
return

TogglePause:
    Suspend, Toggle ; This "Pauses" all hotkeys below
    if (A_IsSuspended) {
        Menu, Tray, Check, Pause Guardian
        Menu, Tray, Tip, Cursor Guardian: PAUSED
        TrayTip, Guardian, PAUSED, 1
    } else {
        Menu, Tray, Uncheck, Pause Guardian
        Menu, Tray, Tip, Cursor Guardian: ACTIVE
        TrayTip, Guardian, ACTIVE, 1
    }
return

ReloadScript:
    Reload
return

QuitScript:
    ExitApp
return

; --- THE LOGIC ---
#IfWinActive ahk_exe chrome.exe

; This "AnyKey" listener counts your typing
~*Space::
~*Enter::
~*BackSpace::
~*a::
~*b::
~*c::
~*d::
~*e::
~*f::
~*g::
~*h::
~*i::
~*j::
~*k::
~*l::
~*m::
~*n::
~*o::
~*p::
~*q::
~*r::
~*s::
~*t::
~*u::
~*v::
~*w::
~*x::
~*y::
~*z::
~*1::
~*2::
~*3::
~*4::
~*5::
~*6::
~*7::
~*8::
~*9::
~*0::
    KeysPressed++


    if (KeysPressed >= Threshold) {
        MouseGetPos, CurrentX, CurrentY
        TargetX := A_ScreenWidth - EdgePadding
        MouseMove, %TargetX%, %CurrentY%, 2
        KeysPressed := 0
    }
return

; Reset counter if user clicks manually
~LButton::
~RButton::
    KeysPressed := 0
return

#IfWinActive

