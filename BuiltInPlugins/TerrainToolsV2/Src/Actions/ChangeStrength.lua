local Action = require(script.Parent.Action)

return Action(script.Name, function(strength)
	strength = tonumber(strength)
	if strength then
		assert(type(strength) == "number", string.format("Expected strength to be a number, received %s", type(strength)))
	end
	return {
		strength = strength
	}
end)