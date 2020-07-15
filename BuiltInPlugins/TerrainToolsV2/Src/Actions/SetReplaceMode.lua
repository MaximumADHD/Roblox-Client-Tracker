local Action = require(script.Parent.Action)

return Action(script.Name, function(ReplaceMode)
	assert(type(ReplaceMode) == "string", ("Expected ReplaceMode to be a string, received %s"):format(type(ReplaceMode)))

	return {
		ReplaceMode = ReplaceMode,
	}
end) 