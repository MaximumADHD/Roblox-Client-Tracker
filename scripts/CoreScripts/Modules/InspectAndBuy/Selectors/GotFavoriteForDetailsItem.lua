local CorePackages = game:GetService("CorePackages")
local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)
local InspectAndBuyFolder = script.Parent.Parent
local IsDetailsItemPartOfBundleAndOffsale = require(InspectAndBuyFolder.Selectors.IsDetailsItemPartOfBundleAndOffsale)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local createInspectAndBuyKeyMapper = require(InspectAndBuyFolder.createInspectAndBuyKeyMapper)

local FFlagInspectAndBuyFetchingStatusKeyFix = require(InspectAndBuyFolder.Flags.FFlagInspectAndBuyFetchingStatusKeyFix)

local ASSET_KEY = not FFlagInspectAndBuyFetchingStatusKeyFix and "inspectAndBuy.getFavoriteForAsset." or nil
local BUNDLE_KEY = not FFlagInspectAndBuyFetchingStatusKeyFix and "inspectAndBuy.getFavoriteForBundle." or nil

local ASSET_KEY_MAPPER = FFlagInspectAndBuyFetchingStatusKeyFix
	and createInspectAndBuyKeyMapper("getFavoriteForAsset") or nil
local BUNDLE_KEY_MAPPER = FFlagInspectAndBuyFetchingStatusKeyFix
	and createInspectAndBuyKeyMapper("getFavoriteForBundle") or nil

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
		local key
		if FFlagInspectAndBuyFetchingStatusKeyFix then
			-- Generate key with createInspectAndBuyKeyMapper for consistency with GetFavoriteForBundle thunk
			key = BUNDLE_KEY_MAPPER(state.storeId, bundleId)
		else
			key = BUNDLE_KEY ..tostring(bundleId)
		end
		return state.FetchingStatus[key] == RetrievalStatus.Fetching
			or state.FetchingStatus[key] == RetrievalStatus.Done
	else
		local key
		if FFlagInspectAndBuyFetchingStatusKeyFix then
			-- Generate key with createInspectAndBuyKeyMapper for consistency with GetFavoriteForAsset thunk
			key = ASSET_KEY_MAPPER(state.storeId, assetId)
		else
			key = ASSET_KEY ..tostring(assetId)
		end
		return state.FetchingStatus[key] == RetrievalStatus.Fetching
			or state.FetchingStatus[key] == RetrievalStatus.Done
	end
end