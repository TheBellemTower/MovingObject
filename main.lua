-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Ethan Bellem
-- Created on: March 2018
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeed = 5
local skrollSped = 16
-- background image with width and height
local backgroundImage = display.newImageRect("./assets/sprites/terminatorcityscape.jpg", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "terminator"

-- character image with width and height
local slide = display.newImageRect("./assets/sprites/slide.png", 1000, 1000)
slide.x = 150
slide.y = 0
slide.ID = "slide"

local bullet = display.newImageRect("./assets/sprites/bullet.png", 100, 100)
bullet.x = 0
bullet.y = 0
bullet.ID = "shot"

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    slide.x = slide.x + scrollSpeed
    slide.y = slide.y + scrollSpeed
    slide.rotation = 25
    print( display.fps )  -- note this displays how fast the current refresh is
end

local function shootBullet(event)
	-- will fire bullet slightly faster than the robot moves
	bullet.x = bullet.x + skrollSped
	bullet.y = bullet.y + skrollSped
	bullet.rotation = 45

	print( display.fps )
end


-- MoveSnowman will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)
Runtime:addEventListener("enterFrame", shootBullet)
