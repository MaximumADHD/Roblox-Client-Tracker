local Action = require(script.Parent.Action)

return Action(script.Name, function(defaultMaterial)
	assert(typeof(defaultMaterial) == "EnumItem",
		("Expected defaultMaterial to be a EnumItem, received %s"):format(typeof(defaultMaterial)))

	return {
		defaultMaterial = defaultMaterial,
	}
end)
