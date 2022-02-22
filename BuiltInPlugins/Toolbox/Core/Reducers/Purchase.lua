--[[
	Store for handling data related to the purchase of an asset.
	When starting a purchase, clear the ownsAsset and status fields.

	A PurchaseAssetRequest will update the fields as necessary:
	Immediately when the request is called, PurchaseStatus becomes "Waiting",
	then based on the outcome of the purchase, becomes "Success" or "Failure".
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Core.Actions
local SetRobuxBalance = require(Actions.SetRobuxBalance)
local SetOwnsAsset = require(Actions.SetOwnsAsset)
local SetPurchaseStatus = require(Actions.SetPurchaseStatus)
local ClearPurchaseFlow = require(Actions.ClearPurchaseFlow)
local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

return Rodux.createReducer({
	robuxBalance = 0,
	status = PurchaseStatus.None,
	cachedOwnedAssets = {},

	assetId = nil,
}, {
	[SetRobuxBalance.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			robuxBalance = action.robuxBalance,
		})
	end,

	[ClearPurchaseFlow.name] = function(state, action)
		local assetId = action.assetId
		return Cryo.Dictionary.join(state, {
			assetId = assetId,
			status = PurchaseStatus.None,
		})
	end,

	[SetOwnsAsset.name] = function(state, action)
		local ownsAsset = action.ownsAsset
		local assetId = action.assetId
		local cachedOwnedAssets = Cryo.Dictionary.join(state.cachedOwnedAssets, {
			[tostring(assetId)] = ownsAsset,
		})
		return Cryo.Dictionary.join(state, {
			cachedOwnedAssets = cachedOwnedAssets,
		})
	end,

	[SetPurchaseStatus.name] = function(state, action)
		local status = action.status
		return Cryo.Dictionary.join(state, {
			status = status,
		})
	end,
})
