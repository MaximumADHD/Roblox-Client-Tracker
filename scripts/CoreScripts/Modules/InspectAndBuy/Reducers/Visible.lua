local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local ShowMenu = require(InspectAndBuyFolder.Actions.ShowMenu)
local HideMenu = require(InspectAndBuyFolder.Actions.HideMenu)

return Rodux.createReducer(
	true
, {
	[ShowMenu.name] = function(state, action)
		return true
	end,
	[HideMenu.name] = function(state, action)
		return false
	end,
})