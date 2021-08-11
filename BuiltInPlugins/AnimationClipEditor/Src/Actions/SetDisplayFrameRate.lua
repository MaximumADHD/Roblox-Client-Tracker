--[[
	Changes the display frameRate
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(displayFrameRate)
	return {
		displayFrameRate = displayFrameRate,
	}
end)