--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action("SetDevConsoleVisibility", function(visibility)
	return {
		isVisible = visibility
	}
end)