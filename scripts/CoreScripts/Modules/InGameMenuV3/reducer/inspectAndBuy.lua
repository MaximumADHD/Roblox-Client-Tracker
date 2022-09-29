--[[
	reducer for InspectAndBuyV2 housed within the
	InGameMenuV3 UX
]]

local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent
local AssetInfo = require(InGameMenu.Models.AssetInfo)
local BundleInfo = require(InGameMenu.Models.BundleInfo)
local SetAssets = require(InGameMenu.Actions.InspectAndBuy.SetAssets)
local SetBundles = require(InGameMenu.Actions.InspectAndBuy.SetBundles)
local SetBundlesAssetIsPartOf = require(InGameMenu.Actions.InspectAndBuy.SetBundlesAssetIsPartOf)
local SelectItem = require(InGameMenu.Actions.InspectAndBuy.SelectItem)
local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)
local UpdateStoreId = require(InGameMenu.Actions.InspectAndBuy.UpdateStoreId)
local SetTryOnItemInfo = require(InGameMenu.Actions.InspectAndBuy.SetTryOnItemInfo)
local SetIsSubjectToChinaPolicies = require(InGameMenu.Actions.InspectAndBuy.SetIsSubjectToChinaPolicies)
local SetItemBeingPurchased = require(InGameMenu.Actions.InspectAndBuy.SetItemBeingPurchased)
local ResetInspectedInfo = require(InGameMenu.Actions.InspectAndBuy.ResetInspectedInfo)

local storeIdCounter = 0

local defaultState = {
	Assets = {},
	Bundles = {},
	SelectedItem = {},
	UserId = 0,
	DisplayName = "",
	StoreId = tostring(storeIdCounter),
	TryingOn = false,
	IsSubjectToChinaPolicies = true,
	ItemBeingPurchased = {},
}

type State = {
	Assets: AssetInfo.AssetInfo,
	Bundles: BundleInfo.BundleInfo,
	SelectedItem: AssetInfo.AssetInfo,
	UserId: number,
	DisplayName: string,
	StoreId: string,
}

return Rodux.createReducer(defaultState, {
	--[[
		Set a group of assets, joining with any existing assets. Standardized by AssetInfo model
	]]
	[SetAssets.name] = function(state : State, action : any)
		local assets = {}
		local selectedItem = state.SelectedItem
		for _, asset in ipairs(action.assets) do
			assert(asset.assetId ~= nil, "Expected an asset id when setting an asset's information.")
			if state.Assets[asset.assetId] and state.SelectedItem.assetId == asset.assetId then
				-- if the currently selected asset is being updated, also update the selected item
				-- in the store
				selectedItem = Cryo.Dictionary.join(state.Assets[asset.assetId], asset)
			end

			local currentAsset = state.Assets[asset.assetId] or {}
			assets[asset.assetId] = Cryo.Dictionary.join(currentAsset, asset)
		end

		return Cryo.Dictionary.join(state, {
			Assets = Cryo.Dictionary.join(state.Assets, assets),
			SelectedItem = selectedItem,
		})
	end,

	[SetBundles.name] = function(state : State, action : any)
		local bundles = {}

		for _, bundle in ipairs(action.bundles) do
			assert(bundle.bundleId ~= nil, "Expected a bundle id when setting a bundle's information.")
			local currentBundle = state.Bundles[bundle.bundleId] or {}
			bundles[bundle.bundleId] = Cryo.Dictionary.join(currentBundle, bundle)
		end

		return Cryo.Dictionary.join(state, {
			Bundles = Cryo.Dictionary.join(state.Bundles, bundles)
		})
	end,

	--[[
		Sets the list of bundles an asset is part of. At this point
		the asset should already exist in the store. This is called
		after the user navigates to the details page.
	]]
	[SetBundlesAssetIsPartOf.name] = function(state : State, action : any)
		local assetId = tostring(action.assetId)
		local bundles = action.bundleIds
		local currentAsset = state.Assets[assetId] or {}
		local asset = AssetInfo.fromGetAssetBundles(assetId, bundles)
		asset = Cryo.Dictionary.join(currentAsset, asset)

		return Cryo.Dictionary.join(state, {
			Assets = Cryo.Dictionary.join(state.Assets, {[assetId] = asset})
		})
	end,

	[SelectItem.name] = function(state : State, action: any)
		return Cryo.Dictionary.join(state, {
			SelectedItem = action.selectedItem
		})
	end,

	[SetInspectedUserInfo.name] = function(state : State, action : any)
		return Cryo.Dictionary.join(state, {
			UserId = action.userId,
			DisplayName = action.displayName
		})
	end,

	[UpdateStoreId.name] = function(state : State, action : any)
		storeIdCounter = storeIdCounter + 1
		return Cryo.Dictionary.join(state, {
			StoreId = tostring(storeIdCounter)
		})
	end,

	[SetTryOnItemInfo.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			TryingOn = action.tryingOn
		})
	end,

	[SetIsSubjectToChinaPolicies.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			IsSubjectToChinaPolicies = action.isSubjectToChinaPolicies
		})
	end,

	[SetItemBeingPurchased.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			ItemBeingPurchased = {
				itemType = action.itemType,
				itemId = action.itemId,
			}
		})
	end,

	[ResetInspectedInfo.name] = function(state, _)
		return Cryo.Dictionary.join(state, {
			Assets = {},
			Bundles = {},
			SelectedItem = {},
			UserId = 0,
			DisplayName = "",
			TryingOn = false,
			ItemBeingPurchased = {},
		})
	end
})
