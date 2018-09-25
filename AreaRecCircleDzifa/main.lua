-----------------------------------------------------------------------------------------
--  Title: AreaRectCirlcle
--  Name: Dzifa 
--  Course: ICS20/3C
-- This program displays the area of a circle.
-----------------------------------------------------------------------------------------

-- create my local variables
local textSize = 50

local areaTextRect
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

local areaTextCircle
local radiusOfCircle = 130
local areaOfCircle
local PI = 3.14

-- set the background colour of my screen.Remember that colours are between 0 and 1.
display.setDefault("background", 204/255, 230/255, 255/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is 350 pixels wide and 200 pixels high.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--draw the circle that is 130 pixels in radius.
myCircle = display.newCircle(0, 0, radiusOfCircle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 650
myCircle.y = 30

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the width of the border
myCircle.strokeWidth = 20

--set the fill color of the rectangle
myRectangle:setFillColor(179/255, 218/255, 255/255)

--set the fill color of the rectangle
myCircle:setFillColor(179/255, 218/255, 255/255)

-- set the colour of the border
myRectangle:setStrokeColor(0,0,0)

-- set the colour of the border
myCircle:setStrokeColor(0, 0, 0)

-- calculate the area of the rectangle.
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- calculate the area of the circle.
areaOfCircle = PI * radiusOfCircle* radiusOfCircle


-- write the area of the rectangle on the screen
areaTextRect = display.newText( "The area of this rectangle with the width of \n " ..
    widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
    areaOfRectangle .. " pixels².  ", 0, 0, Arial, textSize)

-- write the area  of the circle on the screen.
areaTextCircle = display.newText( "The area of this circle with the radius of \n " ..
    radiusOfCircle  .. " is " .. areaOfCircle .. " pixels².  ", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaTextRect.anchorX = 0
areaTextRect.anchorY = 0
areaTextRect.x = 20
areaTextRect.y = 600

-- anchor the text and set its (x,y) position
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 20
areaTextCircle.y = 400

-- set the colour of the Rectangle text.
areaTextRect:setTextColor(0, 0, 0)

-- set the colour of the Circle SText
areaTextCircle:setTextColor(0, 0, 0)