local CorePackages = game:GetService("CorePackages")
-- local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetEquippedAssets = require(InspectAndBuyFolder.Actions.SetEquippedAssets)

return Rodux.createReducer({}, {
	--[[
		Set the inspector's equipped assets.
	]]
	[SetEquippedAssets.name] = function(state, action)
		local equippedAssets = {}
		for _, asset in ipairs(action.equippedAssets) do
			equippedAssets[tostring(asset.assetId)] = true
		end
		return equippedAssets
	end,
})
