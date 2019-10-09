local Action = require(script.Parent.Action)

return Action(script.Name, function(pivot)
	if pivot then
		assert(type(pivot) == "string", string.format("Expected pivot to be a string, received %s", type(pivot)))
	end

	return {
		pivot = pivot
	}

end)