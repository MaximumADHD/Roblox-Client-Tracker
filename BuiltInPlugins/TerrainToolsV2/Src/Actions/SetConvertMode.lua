local Action = require(script.Parent.Action)

return Action(script.Name, function(convertMode)
	assert(type(convertMode) == "string", ("Expected convertMode to be a string, received %s"):format(type(convertMode)))

	return {
		convertMode = convertMode,
	}
end)
