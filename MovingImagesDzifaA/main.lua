-----------------------------------------------------------------------------------------------
-- Title: MovingImages
-- Name: Dzifa agbenyoh
-- Course: ICS2O/3C
-- This program displays an image that moves across the screen.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

-- background image with width and height 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent 
beetleship.alpha = 0

-- set the initial x and y position of beetleship.
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	 -- add the scroll speed to the x-value of the ship
	 beetleship.x = beetleship.x + scrollSpeed
	 -- change the transparency of the ship every time it moves 
	 --so that it fades out.
	 beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

  local scrollSpeed2 = 6


 -- character image with width and height 
 local girl5 = display.newImageRect("Images/girl5.png", 200, 200)

 -- set the image to be transparent
 girl5.alpha = 1

 -- set the initial x and y position of girl5
 girl5.x = display.contentWidth*3/3
 girl5.y = display.contentHeight*2/3

 -- Function: MoveGirl5
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the girl
local function MoveGirl5(event)
	 -- add the scroll speed to the x-value of the girl
	 girl5.x = girl5.x - scrollSpeed
	 -- change the transparency of the ship every time 
	 --it moves so that it fades out.
	 girl5.alpha = girl5.alpha - 0.000000000001
end

-- MoveGirl5 will be called over and over again
Runtime:addEventListener("enterFrame", MoveGirl5)

  local scrollSpeed2 = 4

