local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(AppTempCommon.Common.Immutable)
local SetSearchAreaActive = require(ShareGame.Actions.SetSearchAreaActive)
local SetSearchText = require(ShareGame.Actions.SetSearchText)

return function(state, action)
	state = state or {
		SearchAreaActive = false,
		SearchText = "",
	}

	if action.type == SetSearchAreaActive.name then
		state = Immutable.Set(state, "SearchAreaActive", action.isActive)
	elseif action.type == SetSearchText.name then
		state = Immutable.Set(state, "SearchText", action.searchText)
	end

	return state
end