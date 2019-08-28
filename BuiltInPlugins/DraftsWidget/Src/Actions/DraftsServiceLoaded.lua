--[[
	Dispatched when DraftsService finishes loading
]]
local Action = require(script.Parent.Action)

-- isEnabled : (boolean) whether DraftsService is enabled or not
return Action(script.Name, function(isEnabled)
	assert(type(isEnabled) == "boolean",
		string.format("Expected isEnabled to be a boolean, received %s", tostring(isEnabled)))

	return {
		isEnabled = isEnabled
	}
end)