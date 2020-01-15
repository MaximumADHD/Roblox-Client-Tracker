local Action = require(script.Parent.Action)

return Action(script.Name, function(material)
	assert(typeof(material) == "EnumItem", ("Expected material to be a EnumItem, received %s"):format(typeof(material)))

	return {
		material = material,
	}
end)
