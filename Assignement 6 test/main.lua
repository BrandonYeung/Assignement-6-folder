-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------


display.setStatusBar(display.HiddenStatusBar)
--------------------

display.setDefault("background", 22/255, 80/255, 150/255)
-------------------



-- Text field for user to enter a number
-------------------
local userNumberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 125, 300, 50 )
userNumberTextField.id = "userNumberTextField"
-------------------

-- Calculate button 
-------------------
local calculateButton = display.newImageRect( "assets/button.png", 200, 85 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 30
calculateButton.id = "calculate button"
-------------------



-- Value of pi text
local valueOfPiTextField = display.newText( "Value of pi", display.contentCenterX, display.contentCenterY + 250, native.systemFont, 25 )
valueOfPiTextField.id = "valueOfPi textField"
valueOfPiTextField:setFillColor( 0 )
-------------------

--Calculate Function
-----------------------------------------------------------------------
local function calculateButtonTouch ( event )

local ittereations
local mathNumbers
local answer

answer = 0
ittereations = tonumber(userNumberTextField.text) -- Converts userNumberTextField.text to a number instead of a string
mathNumbers = -1 

--Loop for the ittereations and to calculate the value of pi
for math = 1, ittereations, 1 do
	mathNumbers = mathNumbers*-1
	answer = answer + 4/(2*math-1)*mathNumbers
	valueOfPiTextField.text = ("Answer: "..answer)

end 

-- If statemnent to tell the user to enter a positive number if they enter a negative one.
if tonumber(userNumberTextField.text) < 0 then
	valueOfPiTextField.text = ("Enter a positive number")
end
end
-----------------------------------------------------------------------

--Event listener for the calculate button
calculateButton:addEventListener( "touch", calculateButtonTouch )