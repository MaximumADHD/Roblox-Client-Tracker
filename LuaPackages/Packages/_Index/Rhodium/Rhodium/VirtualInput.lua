--!strict
local Rhodium = script:FindFirstAncestor("Rhodium")
local Keyboard = require(Rhodium.InputTypes.Keyboard)
local Mouse = require(Rhodium.InputTypes.Mouse)
local Touch = require(Rhodium.InputTypes.Touch)
local Text = require(Rhodium.InputTypes.Text)
local GamePad = require(Rhodium.InputTypes.GamePad)

local VirtualInputUtils = require(Rhodium.VirtualInputUtils)

local VirtualInput = {
	Keyboard = Keyboard,
	Mouse = Mouse,
	Touch = Touch,
	Text = Text,
	GamePad = GamePad,

	setCurrentWindow = VirtualInputUtils.setCurrentWindow,
	getCurrentWindow = VirtualInputUtils.getCurrentWindow,
	waitForInputEventsProcessed = VirtualInputUtils.waitForInputEventsProcessed,
}

return VirtualInput
