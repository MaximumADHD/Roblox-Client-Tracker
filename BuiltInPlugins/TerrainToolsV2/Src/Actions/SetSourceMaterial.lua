local Action = require(script.Parent.Action)

return Action(script.Name, function(SourceMaterial)
	assert(typeof(SourceMaterial) == "EnumItem",
		("Expected SourceMaterial to be a EnumItem, received %s"):format(typeof(SourceMaterial)))

	return {
		SourceMaterial = SourceMaterial,
	}
end)