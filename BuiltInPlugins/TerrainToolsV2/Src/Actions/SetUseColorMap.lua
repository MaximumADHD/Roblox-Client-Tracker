local Action = require(script.Parent.Action)

return Action(script.Name, function(useColorMap)
	if useColorMap then
		assert(type(useColorMap) == "boolean", string.format("Expected bool to be a boolean, received %s", type(useColorMap)))
	end
	return {
		useColorMap = useColorMap
	}
end)