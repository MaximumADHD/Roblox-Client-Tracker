local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Rodux = require(CorePackages.Rodux)
local SetIsSubjectToChinaPolicies = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetIsSubjectToChinaPolicies)
local SetGameProductInfo = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetGameProductInfo)
local SetUniverseId = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetUniverseId)
local AppTopBannerReducer = require(CorePackages.Workspace.Packages.AppTopBanner).Reducers.AppTopBannerReducer
local SquadsCore = require(CorePackages.Workspace.Packages.SquadsCore)

local GetFFlagEnableTopBannerInLoadingScreen = require(CoreGui.RobloxGui.Modules.Flags.GetFFlagEnableTopBannerInLoadingScreen)
local GetFFlagLuaAppEnableSquadPage = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableSquadPage

local GameProductInfoReducer = Rodux.createReducer(nil, {
	[SetGameProductInfo.name] = function(state, action)
		return action.productInfo
	end,
})

local GameIdReducer = Rodux.createReducer(nil, {
	[SetUniverseId.name] = function(state, action)
		return {
			universeId = action.universeId,
			placeId = action.placeId,
		}
	end,
})

local IsSubjectToChinaPoliciesReducer = Rodux.createReducer(nil, {
	[SetIsSubjectToChinaPolicies.name] = function(state, action)
		return action.isSubjectToChinaPolicies
	end,
})

return Rodux.combineReducers({
	isSubjectToChinaPolicies = IsSubjectToChinaPoliciesReducer,
	productInfo = GameProductInfoReducer,
	gameIds = GameIdReducer,
	AppTopBanner = if GetFFlagEnableTopBannerInLoadingScreen() then AppTopBannerReducer else nil,
	Squad = if GetFFlagLuaAppEnableSquadPage() then SquadsCore.installReducer() else nil,
})
