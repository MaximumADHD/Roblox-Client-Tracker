--[[
	Fired when the thing happens
]]
local Action = require(script.Parent.Action)

-- aString : (string) a message for when the thing happens
return Action(script.Name, function(aString)
	if aString then
		assert(type(aString) == "string", string.format("Expected aString to be a string, received %s", tostring(aString)))
	end

	return {
		message = aString
	}
end)