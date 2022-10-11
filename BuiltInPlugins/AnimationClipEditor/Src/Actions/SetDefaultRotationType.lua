--[[
	Used to change the default rotation type (either Quaternions or Euler angles).
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(rotationType)
	return {
		defaultRotationType = rotationType,
	}
end)
