local Action = require(script.Parent.Action)

return Action(script.Name, function(autoMaterial)
	if autoMaterial then
		assert(type(autoMaterial) == "boolean", string.format("Expected autoMaterial to be a boolean, received %s", type(autoMaterial)))
	end
	return {
		autoMaterial = autoMaterial
	}
end)