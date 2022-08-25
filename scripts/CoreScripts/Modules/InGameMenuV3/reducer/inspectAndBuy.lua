--[[
	reducer for InspectAndBuyV2 housed within the
	InGameMenuV3 UX
]]

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)
local UpdateStoreId = require(InGameMenu.Actions.InspectAndBuy.UpdateStoreId)

local storeIdCounter = 0

local defaultState = {
	Assets = {},
	Bundles = {},
	SelectedItem = {},
	UserId = 0,
	DisplayName = "",
	StoreId = tostring(storeIdCounter),
}
return Rodux.createReducer(defaultState, {
	--[[
		Set a group of assets, joining with any existing assets. Standardized by AssetInfo model
	]]
	[SetAssets.name] = function(state, action)
		local assets = {}
		for _, asset in ipairs(action.assets) do
			assert(asset.assetId ~= nil, "Expected an asset id when setting an asset's information.")
			local currentAsset = state.Assets[asset.assetId] or {}
			assets[asset.assetId] = Cryo.Dictionary.join(currentAsset, asset)
		end

		return Cryo.Dictionary.join(state, {
			Assets = Cryo.Dictionary.join(state.Assets, assets)
		})
	end,

	[SetInspectedUserInfo.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			UserId = action.userId,
			DisplayName = action.displayName
		})
	end,

	[UpdateStoreId.name] = function(state, action)
		storeIdCounter = storeIdCounter + 1
		return Cryo.Dictionary.join(state, {
			StoreId = tostring(storeIdCounter)
		})
	end,
})
