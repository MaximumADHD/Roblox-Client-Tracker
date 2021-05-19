local Action = require(script.Parent.Action)

return Action(script.Name, function(ignoreParts)
	assert(type(ignoreParts) == "boolean", ("Expected ignoreParts to be a boolean, received %s"):format(type(ignoreParts)))

	return {
		ignoreParts = ignoreParts,
	}
end)
