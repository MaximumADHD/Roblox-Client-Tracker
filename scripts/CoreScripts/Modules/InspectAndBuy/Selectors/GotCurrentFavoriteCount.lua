local CorePackages = game:GetService("CorePackages")
local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)
local InspectAndBuyFolder = script.Parent.Parent
local IsDetailsItemPartOfBundleAndOffsale = require(InspectAndBuyFolder.Selectors.IsDetailsItemPartOfBundleAndOffsale)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local ASSET_KEY = "inspectAndBuy.getAssetFavoriteCount."
local BUNDLE_KEY = "inspectAndBuy.getBundleFavoriteCount."

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
		return state.FetchingStatus[BUNDLE_KEY ..tostring(bundleId)] == RetrievalStatus.Fetching
			or state.FetchingStatus[BUNDLE_KEY ..tostring(bundleId)] == RetrievalStatus.Done
	else
		return state.FetchingStatus[ASSET_KEY ..tostring(assetId)] == RetrievalStatus.Fetching
			or state.FetchingStatus[ASSET_KEY ..tostring(assetId)] == RetrievalStatus.Done
	end
end