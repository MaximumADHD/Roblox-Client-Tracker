local Immutable = require(script.Parent.Parent.Immutable)

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)

return function(state, action)
	local mainView = state or {
		-- initializes to the first tab in the list of views which should be Log
		isClientView = true,
		currTabIndex = 1,
	}

	if action.type == SetActiveTab.name then
		local update = {
			currTabIndex = action.newTabIndex,
			isClientView = action.isClientView
		}
		return Immutable.JoinDictionaries(mainView, update)
	end

	return mainView
end