-- this is mostly for product purposes (to allow testing of many different variables to figure out which works best, without having to make new builds each time something needs to get changed)
-- moving adjustable properties into a separate module that can be required by all other modules
-- also will allow for smoother ways to adjust them, such as a gui interface that can accept number/bool/string input.
local VirtualCursorFolder = script.Parent
local VirtualCursorEnums = require(VirtualCursorFolder.Enums)

local properties = {
	MovementMode = VirtualCursorEnums.MovementMode.Standard,
	InputMode = VirtualCursorEnums.InputMode.Linear,

	DefaultColor = Color3.fromRGB(255, 255, 255),
	HighlightColor = Color3.fromRGB(255, 255, 255),

	SpeedAdjustment = true,
	SpeedAdjustmentPower = 10.0,        -- spring power for speed adjustment (higher = snappier, lower = driftier)
	SpeedAdjustmentTarget = 0.50,       -- target velocity (as multiple of velocity)

	CursorRadius = 40,                  -- pixel radius for cursor display
	SelectionRadius = 40,               -- pixel radius for selection (for pointer support, might want to keep radius, but make it smaller)

	FastModeMultiplier = 1.75,          -- how much faster to make the cursor when toggled by pressing thumbstick

	SpeedRelativity = VirtualCursorEnums.SpeedRelativity.Viewport,
	MaxSpeedPixels = 1500,              -- pixels/s
	MaxSpeedRelative = 0.5,             -- viewport radii/s

	AccelToggleThreshold = 0.90,        -- threshold for acceleration to activate, thumbstick position from center.
	AccelBaseSpeedPixels = 500,         -- pixels/s
	AccelBaseSpeedRelative = 0.4,       -- viewport radii/s
	AccelTime = 0.75,                   -- time it takes for base speed to reach max speed

	ThumbstickDeadzone = 0.20,          -- 20% of thumbstick is deadzone

	SensitivityBase = 0.50,             -- base sensitivity scale (0 camera sensitivity correlates to this) 1 correlates to 1, other values follow this scale
}

setmetatable(properties, {
	__index = function(self, key)
				error(string.format("%q is not a valid member of properties",
				tostring(key)), 2)
			end,
})

return properties