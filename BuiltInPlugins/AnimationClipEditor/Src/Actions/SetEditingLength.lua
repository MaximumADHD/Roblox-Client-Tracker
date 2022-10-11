--[[
	Used to set the animation editor length.
	This does not necessarily correspond to
	the explicit animation clip length.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(editingLength)
	return {
		editingLength = editingLength,
	}
end)
