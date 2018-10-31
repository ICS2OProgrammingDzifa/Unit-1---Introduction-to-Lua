-----------------------------------------------------------------------------------------
-- Title: WhackAMole
-- Name: Dzifa Agbenyoh
-- Course: ICS2O/3C
-- This program places a random object on the screen. If the user clicks on it in time
-- the score increases by 1.
-----------------------------------------------------------------------------------------
-- Make local Variables

 local numberPoints = 0
 local pointsTextObject

-- Hide the status a=bar
display.setStatusBar(display.HiddenStatusBar)

-- Creating Background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )

-- sets the background colour
display.setDefault("background", 255/255, 229/255,  255/255)


-- Creating Mole
local mole = display.newImage( "Images/mole.png" , 0, 0)

	-- Setting Position
	mole.x = display.contentCenterX 
	mole.y = display.contentCenterY

	mole:scale(0.5, 0.5)
	mole.isVisible = false

	-- create a points box and make it visible
	pointsTextObject = display.newText( "Points = ".. numberPoints, 800, 385, nil, 50 )
	pointsTextObject:setTextColor(1/255, 1/255, 1/255)

	-- Create increasing points in the text object
	pointsTextObject.text = "Points = ".. numberPoints

--------------------------------Functions----------------------------------------------

-- This function that makes the mole appear in a random (x,y) position on the screen
-- before calling the Hide function 

function PopUp()	

	-- Choosing Random Position on the screen between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

	mole.isVisible = true
	timer.performWithDelay( 500, mole)
end

-- This function calls the PopUp function after 3 seconds
function PopUpDelay()
	timer.performWithDelay( 300, PopUp )
end

-- This function makes the mole invisible and then calls the PopUpDelay function
function Hide()

	--  Changing Visibility
	mole.isVisible = false

	PopUpDelay()
end

-- This function starts the game 
function GameStart()
	PopUpDelay()
end

-- This function increments the score only if the mole is clicked. It then displays the 
-- new score.
function Whacked( event )

	-- If touch phase just started 
	if (event.phase == "began") then
		numberPoints = numberPoints + 1
		pointsTextObject.text = "Points = ".. numberPoints
	   Hide()
	end

end

------------------------------- Event Listeners -------------------------------------------
-- I added the event listener to the moles so that if the mole touched, the Whacked function
-- is called
mole:addEventListener( "touch", Whacked )

------------------------- Start the Game ---------------------------------------------------
GameStart()