-----------------------------------------------------------------------------------------
-- Title: Buttons in lua
-- Name: Ms Raffin
-- Course: ICS20/3C
-- This program displays a red button when the blue button is clicked.
-------------------------------------------------------------------------
-- SOUNDS
-------------------------------------------------------------------------

-- Correct sound
local cashSound = audio.loadSound( "Sound/cash.mp3" ) -- Setting a variable to an mp3
local cashSoundChannel

-- set background colour
display.setDefault ("background", 255/255, 230/255, 255/255)

-- hide status bar
display.setStatusBar (display.HiddenStatusBar)

-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it visible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false


-- create checkmark, set its position and make it visible
local checkmark = display.newImageRect("Images/checkmark.png", 198, 96)
checkmark.x = 250
checkmark.y = 450
checkmark.isVisible = false

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (153/255, 204/255, 255/255)
textObject.isVisible = false



-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button,
-- and make the blue button disapear
local function  BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		checkmark.isVisible = true
	end

	

end


-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)


-- Function: RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: when Red button is clicked, it will make the text 
-- appear with the blue button,and make the red button disapear
local function  RedButtonListener(touch)


	if (touch.phase == "ended") then
		cashSoundChannel = audio.play(cashSound)
		blueButton.isVisible = true
		redButton.isVisible = false
		checkmark.isVisible = false
		textObject.isVisible = false
	end
end


-- add the respective listeners to each object
redButton:addEventListener("touch", RedButtonListener)




