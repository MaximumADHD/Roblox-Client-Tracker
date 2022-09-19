-- this is mostly for product purposes (to allow testing of many different variables to figure out which works best, without having to make new builds each time something needs to get changed)
-- moving adjustable properties into a separate module that can be required by all other modules
-- also will allow for smoother ways to adjust them, such as a gui interface that can accept number/bool/string input.
local properties = {
	SpeedAdjustmentTarget = 0.50,       -- target velocity (as multiple of velocity)

	CursorRadius = 40,                  -- pixel radius for cursor display
	SelectionRadius = 40,               -- pixel radius for selection (for pointer support, might want to keep radius, but make it smaller)

	MaxSpeedRelative = 0.7,             -- viewport radii/s
	ThumbstickDeadzone = 0.20,          -- 20% of thumbstick is deadzone

	ScrollingRadius = 15, 				-- Scrollable area near the edge of scrolling frames for virtual cursor
	ScrollingSlowDown = 0.25, 			-- 25% slowdown when hovering over objects
	ScrollingSpeed = 1000,				-- Scrolling speed of scrolling frames
}

setmetatable(properties, {
	__index = function(self, key)
				error(string.format("%q is not a valid member of properties",
				tostring(key)), 2)
			end,
})

return properties