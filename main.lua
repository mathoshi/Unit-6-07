-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 12, 2019
--
-- This files contains program to guess the age, or whatver the variable is equal to.
-----------------------------------------------------------------------------------------

local background = display.setDefault( "background", 209/255, 226/255, 1)


-- Title with prompt, asking user to guess the age
local prompt = display.newText( "Guess my age", display.contentCenterX, 100, "Futura", 30)

-- Text Field where user inputs their guess
local guessBox = native.newTextField( display.contentCenterX, 200, 200, 40)
guessBox.align = "center"

-- Button user presses to check if they guessed it
local button = display.newRect( display.contentCenterX, 300, 100, 50)
button:setFillColor(149/255, 188/255, 249/255)
local buttonText = display.newText( "OK", display.contentCenterX, 300, "Futura", 20)

-- Where output will show
local output = display.newText( "", display.contentCenterX, 400, "Futura", 20)

-- validation text
local valText = display.newText( "", display.contentCenterX, 430, "Futura", 20)



local function Check ( event )

-- variables to compare
age = 15
guess = tonumber(guessBox.text)

weird(guess)

	for i = 10, 10, 1 do 
		if (age == guess) then
			output.text = "You guessed it!"
		elseif (age > guess) then
			output.text = "You guessed smaller! Try Again"
		elseif (age < guess) then
			output.text = "You guessed bigger! Try again!"
		else 
			output.text = "Yeah, I don't know"
		end
	end

button:setFillColor(120/255, 151/255, 204/255)
end

function weird(guess)

guess = tonumber(guessBox.text)

	if (guess == nil or guess == "") then
		valText.text = "Write something a number! Something like 15 or 15"
	elseif (guess < 3) then
		valText.text = "Really? " .. tostring(guessBox.text) .. "!"
	elseif (guess > 120) then
		valText.text = tostring(guessBox.text) .. "??? I'm not a celestial!"
	end
end

button:addEventListener( "touch", Check)


