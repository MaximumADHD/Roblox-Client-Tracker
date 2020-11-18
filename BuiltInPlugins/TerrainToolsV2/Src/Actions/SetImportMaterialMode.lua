local Action = require(script.Parent.Action)

return Action(script.Name, function(materialMode)
	assert(type(materialMode) == "string",
		("Expected materialMode to be a string, received %s"):format(type(materialMode)))

	return {
		materialMode = materialMode,
	}
end)
