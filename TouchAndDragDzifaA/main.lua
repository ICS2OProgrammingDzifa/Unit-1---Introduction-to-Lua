-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Dzifa Agbenyoh
-- Course: ICS20/3C
-- This program displays images that react to a person's finger.

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local girl3 = display.newImageRect("Images/girl3.png", 150, 150)
local girl3Width = girl3.Width
local girl3Height = girl3.height

local girl4 = display.newImageRect("Images/girl4.png", 150, 150)
local girl4Width = girl4.width
local girl4Height = girl4.height 

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedGirl3 = false
local alreadyTouchedGirl4 = false

-- set the initial x and y position of myImage
girl3.x = 400
girl3.y = 500

girl4.x = 300
girl4.y = 200

-- Function: Girl4listener
-- Input: touch listener
-- Output: none
-- Description: when girl4 is touched, move her
local function  Girl4listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirl3 == false)then
			alreadyTouchedGirl4 = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedGirl4 == true) ) then
		girl4.x = touch.x 
		girl4.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedGirl4 = false
	    alreadyTouchedGirl3 = false
	  end
	end

-- add the respective listeners to each object
girl4:addEventListener("touch", Girl4listener)


-- Function: Girl3listener
-- Input: touch listener
-- Output: none
-- Description: when girl3 is touched, move her
local function  Girl3listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirl4 == false)then
			alreadyTouchedGirl3 = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedGirl3 == true) ) then
		girl3.x = touch.x 
		girl3.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedGirl3 = false
	    alreadyTouchedGirl4 = false
	  end
	end

-- add the respective listeners to each object
girl3:addEventListener("touch", Girl3listener)
