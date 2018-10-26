-----------------------------------------------------------------------------------------

--Title: Interacting Onject 2
--Name: Dzifa Agbenyoh
--Course: ICS3C
--This program displays different sized balls falling on a beam.
-----------------------------------------------------------------------------------------

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
--set the x and y pos
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

--rotate the bame -60 degrees so its on an angle 
beam:rotate(45)

--send it to the back layer
beam:toBack()

--add tp physics 
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})
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
	 	physics.addBody(ball1, {density= 2.0, friction=1.5, bounce=0.3, radius= 25})
	end

-----------------------------------------------------------------

local function secondBall()
		-- creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball2, {density = 1.0, friction = 0.5, bounce = 0.3, raduis = 12.5})
end