--!nonstrict

local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetPerformanceStatsVisible", function(isVisible)
	return {
		isVisible = isVisible
	}
end)