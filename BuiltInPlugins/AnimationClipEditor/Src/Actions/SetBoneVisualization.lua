--[[
	Sets if micorbones are visible in viewport
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(visualizeBones)
	return {
		visualizeBones = visualizeBones,
	}
end)
