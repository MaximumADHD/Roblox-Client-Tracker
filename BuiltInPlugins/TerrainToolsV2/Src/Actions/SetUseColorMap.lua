local Action = require(script.Parent.Action)

return Action(script.Name, function(useColorMap)
	assert(type(useColorMap) == "boolean", ("Expected bool to be a boolean, received %s"):format(type(useColorMap)))

	return {
		useColorMap = useColorMap,
	}
end)
