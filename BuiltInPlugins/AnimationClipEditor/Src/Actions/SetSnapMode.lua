--[[
	Used to change the Snap Mode
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(snapMode)
	return {
		snapMode = snapMode,
	}
end)