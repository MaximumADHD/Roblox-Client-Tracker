local Action = require(script.Parent.Action)

return Action(script.Name, function(editPlaneMode)
	assert(type(editPlaneMode) == "boolean", ("Expected editPlaneMode to be a boolean, received %s"):format(type(editPlaneMode)))

	return {
		editPlaneMode = editPlaneMode,
	}
end)
