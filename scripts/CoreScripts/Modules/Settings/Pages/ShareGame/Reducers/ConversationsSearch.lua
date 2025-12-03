--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable

local ClosePage = require(ShareGame.Actions.ClosePage)
local SetSearchAreaActive = require(ShareGame.Actions.SetSearchAreaActive)
local SetSearchText = require(ShareGame.Actions.SetSearchText)

local DEFAULT_STATE = {
	SearchAreaActive = false,
	SearchText = "",
}

return function(state, action)
	state = state or DEFAULT_STATE

	if action.type == SetSearchAreaActive.name then
		state = Immutable.Set(state, "SearchAreaActive", action.isActive)
	elseif action.type == SetSearchText.name then
		state = Immutable.Set(state, "SearchText", action.searchText)
	elseif action.type == ClosePage.name then
		state = DEFAULT_STATE
	end

	return state
end