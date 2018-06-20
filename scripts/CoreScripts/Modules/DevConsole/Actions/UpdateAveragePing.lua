local Action = require(script.Parent.Parent.Action)

return Action("UpdateAveragePing", function(newAveragePing)
	return {
		AveragePing = newAveragePing
	}
end)