local Action = require(script.Parent.Parent.Action)

return Action("ClientLogSetData", function(newData, newDataFiltered)
	return {
		newData = newData,
		newDataFiltered = newDataFiltered
	}
end)