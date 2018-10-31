-----------------------------------------------------------------------------------------

--Title: Physics And Collisions
--Name: Dzifa Agbenyoh
--Course: ICS3C
--This program displays different sized balls falling on a beam.
---------------------------------------S--------------------------------------------------
-- SOUNDS
-----------------------------------------------------------------------------------------
-- Nature sound
local natureSound = audio.loadSound( "Sound/nature.wav" ) -- Setting a variable to a wav file
local natureChannel


-- Hide the status a=bar
display.setStatusBar(display.HiddenStatusBar)

--load physics
local  physics = require("physics")

--start physics
physics.start()
-------------------------------------------------------------------
--Objects
-------------------------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png", 0, 740)

--change the width to be the same as the screen
ground.width = display.contentWidth
ground.x = display.contentWidth/2

--add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})
---------------------------------------------------------------------
-- display an image of a beam
local beam = display.newImage("Images/beam.png", 0, 0)
beam.width = display.contentWidth/2
beam.height = display.contentHeight*1/9

--set the x and y position
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

--rotate the beam -60 degrees so its on an angle 
beam:rotate(45)

--send it to the back layer
beam:toBack()

--add to physics 
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})
-----------------------------------------------------------------------
-- create a wall to stop the balls from rolling of the screen
-- display an image of a beam
local beam2 = display.newImage("Images/beam.png", 900,400)
beam2.width = display.contentWidth/5
beam2.height = display.contentHeight


--send it to the back layer
beam:toBack()

--add to physics 
physics.addBody(beam2, "static", {friction=0.3, bounce})

----------------------------------------------------------------------
-- create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

-- set the x and y position
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

--set width and height to be the same as the ipad
bkg.width = display.contentWidth
bkg.height = display.contentHeight

-- send to back
bkg:toBack()

-------------------------------------------------------------------
-- FUNCTIONS
-------------------------------------------------------------------

--create the first ball
local function firstBall()
	-- creating first ball
    local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
 	physics.addBody(ball1, {density=2.0, friction=1.5, bounce=0.3, radius=50})
 	ball1:scale(2, 2)
end

-----------------------------------------------------------------
-- create the second ball
local function secondBall()
	-- creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.4, raduis=12.5})
	ball2:scale(0.5, 0.5)
end

-----------------------------------------------------------------
-- create the third ball
local function thirdBall()
	-- creating third ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)
	
	
	--add to physics
	physics.addBody(ball3, {density=1,7, friction=5.5, bounce=0.4, radius=100})
	ball3:scale(4, 4)
end

--------------------------------------------------------------------------------------------------------------
--create the fourth ball
local function fourthBall()
	-- creating fourth ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)
	
	
	--add to physics
	physics.addBody(ball4, {density=1,0, friction=0.7, bounce=0.7, radius=200})
	ball4:scale(4, 4)
end

--------------------------------------------------------------------------------------------------------------
--create the fifth ball
local function fifthBall()
	-- creating fifth ball
	local ball5 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball5, {density=2,0, friction=0.8, bounce=0.8, radius=150})
	ball5:scale(6, 6)
end

-------------------------------------------------------------------------------------------------------------
--create the sixth ball
local function sixthBall()
	-- creating sixth ball
	local ball6 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball6, {density=4,0, friction=0.8, bounce=0.2, radius=275})
	ball6:scale(5.5, 5.5)
end

----------------------------------------------------------------------------------------------------------------
--create the seventh ball
local function seventhBall()
	-- creating seventh ball
	local ball7 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball7, {density=1,0, friction=0.8, bounce=0.7, radius=200})
	ball7:scale(4, 4)
end

----------------------------------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
----------------------------------------------------------------------------------------------------------------
natureSoundChannel = audio.play(natureSound)
 timer.performWithDelay( 0, firstBall)
 timer.performWithDelay( 500, secondBall)
 timer.performWithDelay(1000, thirdBall)
 timer.performWithDelay(1500, fourthBall)
 timer.performWithDelay(2000, fifthBall)
 timer.performWithDelay(2500, sixthBall)
 timer.performWithDelay(3000, seventhBall)
----------------------------------------------------------------------------------------------------------------

