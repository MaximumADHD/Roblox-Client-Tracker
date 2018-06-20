local Action = require(script.Parent.Parent.Action)

return Action("SetLogErrorWarningCount", function(warningCount, errorCount)
	return {
		warningCount = warningCount,
		errorCount = errorCount
	}
end)