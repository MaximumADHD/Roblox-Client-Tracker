local Action = require(script.Parent.Action)

return Action(script.Name, function(code)
	assert(type(code) == "string", "Expected country region code to be a string")
	return {
		countryRegionCode = code,
	}
end)