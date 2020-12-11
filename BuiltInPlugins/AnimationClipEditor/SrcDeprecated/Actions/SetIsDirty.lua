--[[
	Sets whether the current animation has been saved.
	If isDirty is true, the animation has been modified
	since the last time it was saved.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(isDirty)
	return {
		isDirty = isDirty,
	}
end)