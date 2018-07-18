local Action = require(script.Parent.Parent.Action)

return Action("SetDevConsolePosition", function(pos)
	return {
		position = pos
	}
end)