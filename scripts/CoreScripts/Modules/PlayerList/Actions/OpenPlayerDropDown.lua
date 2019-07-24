local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("OpenPlayerDropDown", function(selectedPlayer)
	return {
		selectedPlayer = selectedPlayer
	}
end)