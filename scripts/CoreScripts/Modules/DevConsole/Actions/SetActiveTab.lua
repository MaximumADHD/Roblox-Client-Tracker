local Action = require(script.Parent.Parent.Action)

return Action("SetActiveTab", function(tabListIndex, isClientView)
    return {
		 newTabIndex = tabListIndex,
		 isClientView = isClientView
	}
end)