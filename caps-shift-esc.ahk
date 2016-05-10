#IfWinActive ahk_class mintty
$CapsLock::
If GetKeyState("CapsLock", "P")
{
    While GetKeyState("CapsLock", "P")
      Send {Ctrl Down}
      Send {Ctrl Up}
      }
      Else
        Send {Escape}
        return
