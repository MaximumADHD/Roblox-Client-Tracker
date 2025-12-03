local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetBundles = require(InspectAndBuyFolder.Actions.SetBundles)
local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)
local UpdateBulkPuchaseResults = require(InspectAndBuyFolder.Actions.UpdateBulkPuchaseResults)
local SetAvatarPreviewDetails = require(InspectAndBuyFolder.Actions.SetAvatarPreviewDetails)
local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local ItemType = AvatarExperienceCommon.Enums.ItemTypeEnum

local FFlagAXEnableFetchAvatarPreview = require(InspectAndBuyFolder.Flags.FFlagAXEnableFetchAvatarPreview)
local FFlagAXEnableInspectAndBuyBulkPurchase =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAXEnableInspectAndBuyBulkPurchase
local FFlagAXEnableFavoritesInfoForAssetsAndBundles =
	require(InspectAndBuyFolder.Flags.FFlagAXEnableFavoritesInfoForAssetsAndBundles)

local BundleInfo = require(InspectAndBuyFolder.Models.BundleInfo)
type SetAvatarPreviewDetails = SetAvatarPreviewDetails.SetAvatarPreviewDetails

--[[
	For V1, in order to prevent going through all pages of the
	/v1/assets/{assetId}/bundles endpoint for Rthro assets we
	manually populate Rthro animation bundle data. In the future
	we only need to get a few bundles at a time as a user scrolls
	through the list of bundles.
]]
return Rodux.createReducer(
	{},
	{
		--[[
		Sets the favorite status of a bundle.
	]]
		[SetFavoriteBundle.name] = if FFlagAXEnableFavoritesInfoForAssetsAndBundles
			then function(state, action)
				local prevBundle = state[action.id] or {}
				local nextBundle = Cryo.Dictionary.join({}, prevBundle)
				state[action.id] =
					Cryo.Dictionary.join(nextBundle, BundleInfo.fromGetFavoriteForAsset(action.id, action.isFavorite))
				return state
			end
			else nil,
		--[[
		Updates asset ownerships based on the bulk purchase results.
	]]
		[UpdateBulkPuchaseResults.name] = if FFlagAXEnableInspectAndBuyBulkPurchase
			then function(state, action: UpdateBulkPuchaseResults.UpdateBulkPuchaseResults)
				local items = action.result.Items
				for _, item in items do
					if item.type == Enum.MarketplaceProductType.AvatarBundle then
						local prevBundle = Cryo.Dictionary.join({}, state[item.id])
						state[item.id] =
							Cryo.Dictionary.join(prevBundle, BundleInfo.fromBulkPurchaseResult(item, prevBundle))
					end
				end
				return state
			end
			else nil,
		--[[
		Sets the avatar preview details to each BundleInfo
	]]
		[SetAvatarPreviewDetails.name] = if FFlagAXEnableFetchAvatarPreview
			then function(state, action: SetAvatarPreviewDetails.SetAvatarPreviewDetails)
				local avatarPreviewDetails = action.avatarPreviewDetails
				local look = avatarPreviewDetails.look
				local bundles = {}
				if look.items then
					for _, item in look.items do
						if item.itemType == ItemType.Bundle then
							bundles[tostring(item.id)] = BundleInfo.fromAvatarPreviewItem(item)
						end
					end
				end
				return Cryo.Dictionary.join(state, bundles)
			end
			else nil,
		--[[
		Set/update bundle information.
	]]
		[SetBundles.name] = function(state, action: any)
			local bundles = {}

			for _, bundle in ipairs(action.bundles) do
				assert(bundle.bundleId ~= nil, "Expected a bundle id when setting a bundle's information.")
				local currentBundle = state[bundle.bundleId] or {} :: any

				-- incoming bundle
				if FFlagAXEnableFavoritesInfoForAssetsAndBundles then
					if bundle.assetsInBundle then
						local mergedAssetsInBundle = {}

						-- iterate through the incoming bundle assets
						for _, asset in bundle.assetsInBundle do
							local oldAssetsInBundle = currentBundle.assetsInBundle or {}
							-- find the old asset in the old assetsInBundle
							for _, oldAsset in oldAssetsInBundle do
								if oldAsset.id == asset.id then
									-- merge the old asset with the new asset
									local mergedAsset = Cryo.Dictionary.join(oldAsset, asset)
									table.insert(mergedAssetsInBundle, mergedAsset)
									break
								end
							end
						end
						bundle.assetsInBundle = mergedAssetsInBundle
					end
				end

				bundles[bundle.bundleId] = Cryo.Dictionary.join(currentBundle, bundle)
				if bundles[bundle.bundleId] then
					bundles[bundle.bundleId] = BundleInfo.getSaleDetailsForCollectibles(bundles[bundle.bundleId])
				end
			end

			return Cryo.Dictionary.join(state, bundles)
		end,
	} :: { [string]: any }
)
