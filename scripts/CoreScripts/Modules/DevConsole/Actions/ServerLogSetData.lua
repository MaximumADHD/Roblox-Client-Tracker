local Action = require(script.Parent.Parent.Action)

return Action("ServerLogSetData", function(newData, newDataFiltered)
	return {
		newData = newData,
		newDataFiltered = newDataFiltered
	}
end)