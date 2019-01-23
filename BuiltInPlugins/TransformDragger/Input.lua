
--buttons
local enum =
{
	Key = {
		MOUSE_BUTTON1 = 0,
		MOUSE_BUTTON2 = 1
	},
	State = {
		UP = nil,
		DOWN = true
	}
}

--current Mouse state
local mouseState = {}
local mouse = nil

local connected = false

local function getMouse() return mouse end
local function setMouse(value)
	mouse = value
end

local function getButtonState(button)
	return mouseState[button]
end

local function setButtonState(button, state)
	mouseState[button] = state
end

local function getMouseLocation()
	if not mouse then return nil end
	return mouse.Origin.p
end

local module = {}

module.setMouse = setMouse
module.getMouse = getMouse

module.Enum = enum

module.getButtonState = getButtonState
module.setButtonState = setButtonState
module.getMouseLocation = getMouseLocation

return module
