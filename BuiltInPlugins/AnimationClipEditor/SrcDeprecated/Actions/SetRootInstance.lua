--[[
	Used to set the root instance that the animation
	editor is currently working with.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(rootInstance)
	return {
		rootInstance = rootInstance,
	}
end)