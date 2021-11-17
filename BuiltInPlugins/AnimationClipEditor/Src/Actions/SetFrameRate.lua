--[[
	Changes the display frameRate
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(frameRate)
	return {
		frameRate = frameRate,
	}
end)