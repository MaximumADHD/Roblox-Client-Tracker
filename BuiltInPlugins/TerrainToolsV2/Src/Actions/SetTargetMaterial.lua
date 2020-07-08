local Action = require(script.Parent.Action)

return Action(script.Name, function(TargetMaterial)
	assert(typeof(TargetMaterial) == "EnumItem",
		("Expected TargetMaterial to be a EnumItem, received %s"):format(typeof(TargetMaterial)))

	return {
		TargetMaterial = TargetMaterial,
	}
end)