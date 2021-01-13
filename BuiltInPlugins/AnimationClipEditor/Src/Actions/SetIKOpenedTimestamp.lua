--[[
	Stores timestamp of when the IK window is opened.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(iKOpenedTimestamp)
	return {
		iKOpenedTimestamp = iKOpenedTimestamp,
	}
end)