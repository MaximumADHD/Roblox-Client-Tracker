--[[
	Saved motor data for IK manipulation. Since
	motors on joints need to be deleted when
	manipulation starts and then restored when
	maniplation ends.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(motorData)
	return {
		motorData = motorData,
	}
end)
