--!strict
local VirtualInputManager = game:GetService("VirtualInputManager")

local Rhodium = script:FindFirstAncestor("Rhodium")
local VirtualInputUtils = require(Rhodium.VirtualInputUtils)

local Keyboard = {}

function Keyboard.SendKeyEvent(isPressed: boolean, keyCode: Enum.KeyCode, isRepeated: boolean)
	local window = VirtualInputUtils.getCurrentWindow()
	-- VirtualInputManager is typed to disallow a nil window, but it does not
	-- throw errors and tests rely on it `nil` being allowed
	VirtualInputManager:SendKeyEvent(isPressed, keyCode, isRepeated, window :: any)
end

function Keyboard.pressKey(keyCode: Enum.KeyCode)
	Keyboard.SendKeyEvent(true, keyCode, false)
end

function Keyboard.releaseKey(keyCode: Enum.KeyCode)
	Keyboard.SendKeyEvent(false, keyCode, false)
end

function Keyboard.hitKey(keyCode: Enum.KeyCode)
	Keyboard.pressKey(keyCode)
	Keyboard.releaseKey(keyCode)
	VirtualInputUtils.waitForInputEventsProcessed()
end

return Keyboard
