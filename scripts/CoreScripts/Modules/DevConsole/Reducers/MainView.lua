local Immutable = require(script.Parent.Parent.Immutable)

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)
local SetTabList = require(script.Parent.Parent.Actions.SetTabList)

return function(state, action)
	local mainView = state or {
		-- initializes to the first tab in the list of views which should be Log
		isClientView = true,
		tabList = {},
		currTab = nil,
	}

	if action.type == SetActiveTab.name then
		if mainView.tabList[action.newTabIndex] then
			local update = {
				currTab = mainView.tabList[action.newTabIndex],
				isClientView = action.isClientView
			}
			return Immutable.JoinDictionaries(mainView, update)
		end
	elseif action.type == SetTabList.name then
		if action.tabList[action.initIndex] then
			local update = {
				currTab = action.tabList[action.initIndex],
				tabList = action.tabList,
			}
			return Immutable.JoinDictionaries(mainView, update)
		end
	end

	return mainView
end