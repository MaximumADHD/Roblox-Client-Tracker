local Action = require(script.Parent.Action)

return Action(script.Name, function(autoMaterial)
	assert(type(autoMaterial) == "boolean", ("Expected autoMaterial to be a boolean, received %s"):format(
		type(autoMaterial)))

	return {
		autoMaterial = autoMaterial,
	}
end)
