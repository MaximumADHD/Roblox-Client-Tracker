local CorePackages = game:GetService("CorePackages")
local RetrievalStatus = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local InspectAndBuyFolder = script.Parent.Parent
local IsDetailsItemPartOfBundleAndOffsale = require(InspectAndBuyFolder.Selectors.IsDetailsItemPartOfBundleAndOffsale)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local ASSET_KEY_MAPPER = createInspectAndBuyKeyMapper("getAssetFavoriteCount")
local BUNDLE_KEY_MAPPER = createInspectAndBuyKeyMapper("getBundleFavoriteCount")

--[[
	Gets the current favorite status of the asset/bundle being viewed.
]]
return function(state)
	local assetId = state.detailsInformation.assetId
	if not assetId then
		return false
	end
	local isBundleAndOffsale = IsDetailsItemPartOfBundleAndOffsale(state)
	if isBundleAndOffsale == nil then
		return false
	end
	local assetInfo = state.assets[assetId]
	if not assetInfo then
		return false
	end

	if isBundleAndOffsale then
		local bundleId = UtilityFunctions.getBundleId(assetInfo)
		-- Generate key with createInspectAndBuyKeyMapper for consistency with GetBundleFavoriteCount thunk
		local key = BUNDLE_KEY_MAPPER(state.storeId, bundleId)
		return state.FetchingStatus[key] == RetrievalStatus.Fetching
			or state.FetchingStatus[key] == RetrievalStatus.Done
	else
		-- Generate key with createInspectAndBuyKeyMapper for consistency with GetAssetFavoriteCount thunk
		local key = ASSET_KEY_MAPPER(state.storeId, assetId)
		return state.FetchingStatus[key] == RetrievalStatus.Fetching
			or state.FetchingStatus[key] == RetrievalStatus.Done
	end
end
