local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(AppTempCommon.Common.Immutable)
local Constants = require(ShareGame.Constants)
local OpenPage = require(ShareGame.Actions.OpenPage)
local ClosePage = require(ShareGame.Actions.ClosePage)

return function(state, action)
	state = state or {
		IsOpen = false,
		Route = Constants.PageRoute.NONE,
	}

	if action.type == OpenPage.name then
		state = Immutable.JoinDictionaries(state, {
			IsOpen = true,
			Route = action.route or Constants.PageRoute.NONE,
		})
	elseif action.type == ClosePage.name then
		state = Immutable.JoinDictionaries(state, {
			IsOpen = false,
			Route = action.route or Constants.PageRoute.NONE,
		})
	end

	return state
end