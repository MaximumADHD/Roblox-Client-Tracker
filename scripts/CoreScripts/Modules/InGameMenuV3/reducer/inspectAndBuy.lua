--[[
	reducer for InspectAndBuyV2 housed within the
	InGameMenuV3 UX
]]

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent
local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)

local defaultState = {
	Assets = {},
	Bundles = {},
	SelectedItem = {},
	UserId = 0,
	DisplayName = "",
}
return Rodux.createReducer(defaultState, {
	[SetInspectedUserInfo.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			UserId = action.userId,
			DisplayName = action.displayName
		})
	end,
})
