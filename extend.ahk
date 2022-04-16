InstallKeybdHook
SetCapsLockState "AlwaysOff"

ShowHint := True

MyGui := Gui("+AlwaysOnTop -Caption +ToolWindow")

MyGui.BackColor := "101010"
WinSetTransColor(MyGui.BackColor . " 180", MyGui)

Hint := LoadPicture(A_ScriptDir . "/extend-hint.png")
MyGui.Add("Pic", "w600 h-1", "HBITMAP:*" Hint)

CapsLock::
{
    if ShowHint {
        MyGui.Show("NoActivate Y" . (A_ScreenHeight - 330))
    }
}
CapsLock up::
{
    MyGui.Hide
}

#HotIf GetKeyState("CapsLock", "P")
; remap via scan codes in order to work on all locales
SC002::F1                       ; QWERTY 1, Colemak 1
SC003::F2                       ; QWERTY 2, Colemak 2
SC004::F3                       ; QWERTY 3, Colemak 3
SC005::F4                       ; QWERTY 4, Colemak 4
SC006::F5                       ; QWERTY 5, Colemak 5
SC007::F6                       ; QWERTY 6, Colemak 6
SC008::F7                       ; QWERTY 7, Colemak 7
SC009::F8                       ; QWERTY 8, Colemak 8
SC00A::F9                       ; QWERTY 9, Colemak 9
SC00B::F10                      ; QWERTY 0, Colemak 0
SC00C::F11                      ; QWERTY -, Colemak -
SC00D::F12                      ; QWERTY =, Colemak =

SC017::Up                       ; QWERTY i, Colemak u
SC024::Left                     ; QWERTY j, Colemak n
SC025::Down                     ; QWERTY k, Colemak e
SC026::Right                    ; QWERTY l, Colemak i

SC016::Home                     ; QWERTY u, Colemak l
SC018::End                      ; QWERTY o, Colemak y
SC015::PgUp                     ; QWERTY y, Colemak j
SC023::PgDn                     ; QWERTY h, Colemak h

SC019::Delete                   ; QWERTY p, Colemak ;
SC027::Backspace                ; QWERTY ;, Colemak o
SC01A::Esc                      ; QWERTY [, Colemak [
SC01B::Insert                   ; QWERTY ], Colemak ]

SC010::Esc                      ; QWERTY q, Colemak q
SC01E::Alt                      ; QWERTY a, Colemak a
SC020::Shift                    ; QWERTY d, Colemak s
SC021::Ctrl                     ; QWERTY f, Colemak t

SC02C::^z                       ; QWERTY z, Colemak z
SC02D::^x                       ; QWERTY x, Colemak x
SC02E::^c                       ; QWERTY c, Colemak c
SC02F::^v                       ; QWERTY v, Colemak v

SC012::Browser_Back             ; QWERTY e, Colemak f
SC013::Browser_Forward          ; QWERTY r, Colemak p

SC011::WheelUp                  ; QWERTY w, Colemak w
SC01F::WheelDown                ; QWERTY s, Colemak s

SC030::LButton                  ; QWERTY b, Colemak b
SC031::MButton                  ; QWERTY n, Colemak k
SC032::RButton                  ; QWERTY m, Colemak m

SC014::MouseMove 0, -10, 0, "R" ; QWERTY t, Colemak g
SC022::MouseMove 0, 10, 0, "R"  ; QWERTY g, Colemak d
SC033::MouseMove -10, 0, 0, "R" ; QWERTY ,, Colemak ,
SC034::MouseMove 10, 0, 0, "R"  ; QWERTY ., Colemak .

SC028::AppsKey                  ; QWERTY ', Colemak '
SC01C::PrintScreen              ; QWERTY Enter, Colemak Enter
SC039::Enter                    ; QWERTY Space, Colemak Space
SC00E::Pause                    ; QWERTY Backspace, Colemak Backspace
SC02B::Browser_Favorites        ; QWERTY \, Colemak \
SC035::Tab                      ; QWERTY /, Colemak /
#HotIf