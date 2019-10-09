local Action = require(script.Parent.Action)

return Action(script.Name, function(mergeEmpty)
	if mergeEmpty then
		assert(type(mergeEmpty) == "boolean", string.format("Expected mergeEmpty to be a boolean, received %s", type(mergeEmpty)))
	end
	return {
		mergeEmpty = mergeEmpty,
	}
end)