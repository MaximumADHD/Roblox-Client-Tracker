local Action = require(script.Parent.Action)

return Action(script.Name, function(snapToVoxels)
	assert(type(snapToVoxels) == "boolean", ("Expected snapToVoxels to be a boolean, received %s"):format(type(snapToVoxels)))

	return {
		snapToVoxels = snapToVoxels,
	}
end)
