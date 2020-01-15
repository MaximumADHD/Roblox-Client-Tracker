local Action = require(script.Parent.Action)

return Action(script.Name, function(flattenMode)
	assert(type(flattenMode) == "string", ("Expected flattenMode to be a string, received %s"):format(type(flattenMode)))

	return {
		flattenMode = flattenMode,
	}
end)
