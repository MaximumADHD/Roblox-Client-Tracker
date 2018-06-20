local Action = require(script.Parent.Parent.Action)

return Action("SetDevConsoleMinimized", function(minimize)
	return {
		isMinimized = minimize
	}
end)