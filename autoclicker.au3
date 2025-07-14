; simple autoclicker
; use at your own risk

#NoTrayIcon
#include <Misc.au3>	; needed for '_IsPressed'

Opt('MouseClickDelay', 0)	; changing delay to 0 // default = 10

$delay_left = 66	; 66ms = 12 - 13 cps
$delay_right = 80	; 80ms = 10 - 11 cps

HotKeySet("{F7}", "end")	; F7 to exit

Func click($key, $delay)	; click function // takes $key & $delay
   MouseClick($key)
   Sleep($delay)
EndFunc

Func end()
   ToolTip('cya')
   SoundPlay(@WindowsDir & "\media\Speech Off.wav", 1)	; shitty exit sound idk
   ToolTip(':)')
   Sleep(500)
   Exit
 EndFunc

While True	; main loop
   Sleep(1)	; extremely reduces cpu usage // 15% to 0% when not clicking

   While _IsPressed('06')	; 06 = Mousebutton x2
	  click('left', $delay_left)
   WEnd

   While _IsPressed('05')	; 05 = Mousebutton x1
	  click('right', $delay_right)
   WEnd
	 
WEnd