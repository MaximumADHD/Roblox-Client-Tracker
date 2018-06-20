local Action = require(script.Parent.Parent.Action)

return Action("ChangeDevConsoleSize", function(newSize)
	return {
		newSize = newSize
	}
end)