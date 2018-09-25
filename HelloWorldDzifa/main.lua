
----------------------------------------------------------------------------------------
-- Name: Dzifa Agbenyoh
-- Course: ICS20/3C
-- This program displays Hello, World on the ipad simulator and "Hellooooooo" to the command
-- terminal.
-----------------------------------------------------------------------------------------


-- print "Hello, World"  to the command terminal 
print ("***Helloooooooooooooo!")
print ("***This is awesome!")

-- hide the status bar
 display.setStatusBar(display.HiddenStatusBar)

 -- sets the background colour
 display.setDefault("background", 255/255, 153/255, 153/255)

 -- create a local variable
  local textObject

  -- displays text on the screen at the position x = 500 and y = 500 with
  -- a deafult font style and font size of 50
   textObject = display.newText( "Hello, Dzifa!", 500, 500, nil, 90)

   -- sets the color of the text
   textObject:setTextColor( 0/255, 0/255, 102/255)
 
 -- create a local variable
  local textObjectSignature

  -- displays text on the screen at the position x = 300 and y = 400 with
  -- a deafult font style and font size of 50
   textObjectSignature = display.newText( "by: Dzifa", 500, 600, nil, 50)

   -- sets the color of the text
   textObject:setTextColor( 153/255, 255/255, 204/255)
 
