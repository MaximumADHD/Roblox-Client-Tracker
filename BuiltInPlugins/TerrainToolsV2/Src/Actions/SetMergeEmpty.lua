local Action = require(script.Parent.Action)

return Action(script.Name, function(mergeEmpty)
	assert(type(mergeEmpty) == "boolean", ("Expected mergeEmpty to be a boolean, received %s"):format(type(mergeEmpty)))

	return {
		mergeEmpty = mergeEmpty,
	}
end)
