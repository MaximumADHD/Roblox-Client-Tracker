local Action = require(script.Parent.Action)

return Action(script.Name, function(material)
	return {
		material = material
		
	}
end)