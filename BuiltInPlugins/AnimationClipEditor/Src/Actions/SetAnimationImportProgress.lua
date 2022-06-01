--[[
	Sets animation import progress.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(animationImportProgress)
	return {
		animationImportProgress = animationImportProgress,
	}
end)
