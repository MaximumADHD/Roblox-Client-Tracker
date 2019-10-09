local Action = require(script.Parent.Action)

return Action(script.Name, function(flattenMode)
	if flattenMode then
		assert(type(flattenMode) == "string", string.format("Expected flattenMode to be a string, received %s", type(flattenMode)))
	end
	return {
		flattenMode = flattenMode
	}
end)