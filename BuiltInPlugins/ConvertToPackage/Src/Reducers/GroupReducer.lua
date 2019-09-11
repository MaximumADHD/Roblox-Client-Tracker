local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)
local Actions = Plugin.Src.Actions
local SetMyGroups = require(Actions.SetMyGroups)
local SetAssetGroupData = require(Actions.SetAssetGroupData)

local initial = {
	assetGroupData = {},
	groupsArray = {},
}

return Rodux.createReducer(initial, {
	[SetMyGroups.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			groupsArray = action.groupsArray
		})
	end,
	[SetAssetGroupData.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetGroupData = action.assetGroupData
		})
	end
})