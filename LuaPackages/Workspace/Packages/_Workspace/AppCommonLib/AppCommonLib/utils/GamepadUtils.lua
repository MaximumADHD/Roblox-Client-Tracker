--[[
	Provides Gamepad Utils
]]

local GamepadUtils = {}

local ThumbstickDeadzone = 0.2
local MAX_ZOOM_SPEED = 10
local MIN_AXIS_THRESHOLD = 0.5
local MAX_STICK_ANGULAR_SPEED = math.rad(120) -- Radians per second

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

function GamepadUtils.rotateAndZoom(
	inputObject: InputObject,
	deltaTime: number,
	setAngularVelocityByPixels: (number) -> (),
	rotateByRadians: ((number) -> ())?,
	zoomStraight: ((number) -> ())?
)
	local stickInput =
		GamepadUtils.normalizeStickByDeadzone(Vector2.new(inputObject.Position.X, inputObject.Position.Y))
	if stickInput == Vector2.new(0, 0) then
		return
	end

	setAngularVelocityByPixels(0)
	if rotateByRadians and math.abs(stickInput.X) > MIN_AXIS_THRESHOLD then
		rotateByRadians(deltaTime * stickInput.X * MAX_STICK_ANGULAR_SPEED)
	end

	if zoomStraight and math.abs(stickInput.Y) > MIN_AXIS_THRESHOLD then
		zoomStraight(deltaTime * -stickInput.Y * MAX_ZOOM_SPEED)
	end
end

return GamepadUtils
