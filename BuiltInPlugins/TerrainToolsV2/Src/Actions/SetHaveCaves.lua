--[[
	toggles a gosh darn boolean
]]
local Action = require(script.Parent.Action)

return Action(script.Name, function(bool)
	if bool then
		assert(type(bool) == "boolean", string.format("Expected bool to be a boolean, received %s", type(bool)))
	end
	return {
		haveCaves = bool
		
	}
end)