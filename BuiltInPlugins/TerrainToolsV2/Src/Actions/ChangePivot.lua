local Action = require(script.Parent.Action)

return Action(script.Name, function(pivot)
	assert(type(pivot) == "string", ("Expected pivot to be a string, received %s"):format(type(pivot)))

	return {
		pivot = pivot,
	}
end)
