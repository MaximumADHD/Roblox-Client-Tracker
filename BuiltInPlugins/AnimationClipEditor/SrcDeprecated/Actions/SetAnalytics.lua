--[[
	Used to set the current Analytics object.
	Overrides the default mock Analytics.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(analytics)
	return {
		analytics = analytics,
	}
end)