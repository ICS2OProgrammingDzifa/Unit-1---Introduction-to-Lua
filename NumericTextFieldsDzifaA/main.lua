-----------------------------------------------------------------------------------------
-- Title: NumericTextFields
-- Name: Dzifa
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in numeric textfield.
-- terminal.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 255/255, 229/255,  255/255)

-------------------------------------------------------------------------------------
-- SOUNDS
--------------------------------------------------------------------------------------
-- Correct sound
local correctSound = audio.loadSound( "Sounds/correctSound.mp3" ) -- Setting a variable to an mp3 file
local correctSoundChannel
local wrongSound = audio.loadSound( "Sounds/wrongSound.mp3" ) -- Setting a variable to an mp3 file
local wrongSoundChannel

----------------------------------------------------------------------------------------++=
-- LOCAL VARIABLES
----------------------------------------------------------------------------------------

-- create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectObject
local incorrectAnswer
local randomOperater
local numberPoints = 0


---------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
---------------------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomOperator = math.random(1,3)
	randomNumber1 = math.random(0,10)
	randomNumber2 = math.random(0,10)

 	-- if the random operater is one then do addition
 	if (randomOperator == 1) then
 		correctAnswer = randomNumber1 + randomNumber2
	
		--create question text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	-- If it is 2 the do subtraction
	elseif (randomOperator == 2) then
	 	correctAnswer = randomNumber1 - randomNumber2

		--create question text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif (randomOperator == 3) then
	 	correctAnswer = randomNumber1 * randomNumber2

		--create questionin text object
		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "

	end	

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function HideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
end


local function NumericFieldListener( event )

	-- User begins editing " numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then


			-- when the answer is submited( enter key is pressed ) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true				
				correctSoundChannel = audio.play(correctSound)	
				timer.performWithDelay(2000, HideCorrect)
				numberPoints = numberPoints + 1

				    -- create increasing points in the text object
			 pointsTextObject.text = "Points = ".. numberPoints

			-- If the users answer is incorrect, Incorrect is displayed
			else			
				incorrectObject.isVisible = true
				wrongSoundChannel = audio.play(wrongSound)	
				timer.performWithDelay(2000, HideIncorrect)

			end

		event.target.text = ""
     end
end

-- create a points box and make it visible
pointsTextObject = display.newText( "Points = ".. numberPoints, 800, 385, nil, 50 )
pointsTextObject:setTextColor(155/255, 42/255, 198/255)
------------------------------------------------------------------------------------
-- OBJECT CREATION
------------------------------------------------------------------------------------

-- display a question and sets the colour 
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/1.5, nil, 70 )
questionObject:setTextColor(155/255, 42/255, 198/255)  

-- Create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*1/3, nil, 50 )
correctObject:setTextColor(0,0,0)
correctObject.isVisible = false

-- Create the correct text object and make it invisible
incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*1/3, nil, 50 )
incorrectObject:setTextColor(0,0,0)
incorrectObject.isVisible = false

-- Create numeric field
numericField = native.newTextField( display.contentWidth/1.5, display.contentHeight/1.5, 200, 200 )
numericField.inputType = "default"

-- add the event listener for the numeriuc field
numericField:addEventListener("userInput", NumericFieldListener )

-------------------------------------------------------------------------------------
-- FUNCTION CALLS
-------------------------------------------------------------------------------------

-- call the function to ask question
AskQuestion()

