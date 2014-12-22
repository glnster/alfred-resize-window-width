on alfred_script(loc)

tell application "Finder"
  set _b to bounds of window of desktop
  set myWidth to item 3 of _b
  set myHeight to item 4 of _b
end tell

set front_app to (path to frontmost application as Unicode text)

if loc contains "2" then
  tell application front_app
    activate
    # /* smallest */
    set bounds of window 1 to {0, 0, 400, myHeight}
  end tell
else if loc contains "4" then
  tell application front_app
    activate
    # /* Landscape phone to portrait tablet */
    set bounds of window 1 to {0, 0, 480, myHeight}
  end tell
else if loc contains "6" then
  tell application front_app
    activate
    # /* Landscape phone to portrait tablet */
    set bounds of window 1 to {0, 0, 767, myHeight}
  end tell
else if loc contains "8" then
  tell application front_app
    activate
    # /* Portrait tablet to landscape and desktop */
    set bounds of window 1 to {0, 0, 959, myHeight}
  end tell
else if loc contains "d" then
  tell application front_app
    activate
    set bounds of window 1 to {0, 0, 1280, myHeight}
  end tell
else if loc contains "f" then
  tell application front_app
    activate
    set bounds of window 1 to {0, 0, myWidth, myHeight}
  end tell
else
  tell application front_app
    activate
    set bounds of window 1 to {0, 0, 1350, myHeight}
    # /* set bounds of window 1 to {0, 0, myWidth, myHeight} */
  end tell
end if

end alfred_script