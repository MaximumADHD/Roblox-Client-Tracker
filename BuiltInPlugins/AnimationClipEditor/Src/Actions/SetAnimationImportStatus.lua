--[[
	Sets animation import status.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(animationImportStatus)
	return {
		animationImportStatus = animationImportStatus,
	}
end)
