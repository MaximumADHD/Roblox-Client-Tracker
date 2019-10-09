local Action = require(script.Parent.Action)

return Action(script.Name, function(baseSize)
	baseSize = tonumber(baseSize)
	if baseSize then
		assert(type(baseSize) == "number", string.format("Expected baseSize to be a number, received %s", type(baseSize)))
	end
	return {
		baseSize = baseSize
	}
end)