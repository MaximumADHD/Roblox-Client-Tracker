--[[
	Dispatched when DraftsService finishes loading
]]
local Action = require(script.Parent.Action)

-- isEnabled : (boolean) whether DraftsService is enabled or not
return Action(script.Name, function(isEnabled, result)
	assert(type(isEnabled) == "boolean",
		string.format("Expected isEnabled to be a boolean, received %s", tostring(isEnabled)))
	assert(type(result) == ((not isEnabled) and "string" or "table"))

	return {
		isEnabled = isEnabled,
		errorMessage = (not isEnabled) and result or nil,
	}
end)