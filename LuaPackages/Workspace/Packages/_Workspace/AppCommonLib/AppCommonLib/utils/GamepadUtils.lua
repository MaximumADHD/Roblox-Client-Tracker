--[[
	Provides Gamepad Utils
]]

local GamepadUtils = {}

local ThumbstickDeadzone = 0.2

-- Handles thumbstick deadzones for gamepad support
function GamepadUtils.normalizeStickByDeadzone(stickVector: Vector2, deadzoneParam: number?)
	local magnitude = stickVector.Magnitude
	local deadzone = deadzoneParam or ThumbstickDeadzone
	if magnitude < deadzone then
		return Vector2.new(0, 0)
	else
		return (magnitude - deadzone) / (1 - deadzone) * stickVector.Unit
	end
end

return GamepadUtils
