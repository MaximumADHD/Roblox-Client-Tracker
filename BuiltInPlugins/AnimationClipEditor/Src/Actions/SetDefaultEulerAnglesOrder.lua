--[[
	Used to change the default Euler Angles order (XYZ, XZY, ...).
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(eulerAnglesOrder)
	return {
		defaultEulerAnglesOrder = eulerAnglesOrder,
	}
end)