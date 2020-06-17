local Immutable = require(script.Parent.Parent.Immutable)

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)
local SetTabList = require(script.Parent.Parent.Actions.SetTabList)

return function(state, action)
	local mainView = state or {
		-- initializes to the first tab in the list of views which should be Log
		isDeveloperView = false,
		isClientView = true,
		tabList = {},
		currTabIndex = nil,
	}

	if action.type == SetActiveTab.name then
		if mainView.tabList[action.newTabIndex] then
			local update = {
				currTabIndex = action.newTabIndex,
				isClientView = action.isClientView
			}

			-- TODO (dnurkkala): This one requires a bit of explanation. See DEVTOOLS-2136.
			-- Long story short, the dev console has some false conflations and this resolves a
			-- problem related to those false conflations, despite how odd it looks.
			if mainView.currTabIndex ~= action.newTabIndex then
				update.isClientView = true
			end

            local updated = Immutable.JoinDictionaries(mainView, update)

            if update.isClientView == nil then
                updated = Immutable.RemoveFromDictionary(updated, "isClientView")
            end
			return updated
		end

	elseif action.type == SetTabList.name then
		if action.tabList[action.initIndex] then
			local update = {
				currTabIndex = action.initIndex,
				tabList = action.tabList,
				isDeveloperView = action.isDeveloperView,
				isClientView = true,
			}
			return Immutable.JoinDictionaries(mainView, update)
		end
	end

	return mainView
end