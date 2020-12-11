--[[
	Used to tell how the timeline units should
	be displayed.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(showAsSeconds)
	return {
		showAsSeconds = showAsSeconds,
	}
end)