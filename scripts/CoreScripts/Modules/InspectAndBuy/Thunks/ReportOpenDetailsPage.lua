local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local GetFFlagIBEnableSendCounters = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableSendCounters)
local Constants = require(InspectAndBuyFolder.Constants)
local GetFFlagIBEnableLimitedBundle = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableLimitedBundle)

local requiredServices = {
	Analytics,
}

local BUNDLE = "Bundle"
local ASSET = "Asset"

--[[
	Reports analytics for trying on an item. Updates the store.
]]
local function ReportOpenDetailsPage(assetInfo)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]

		-- Currently we only show the bundle if an asset belongs to ONE bundle, not multiple.
		local partOfBundle = assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
		if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
			partOfBundle = assetInfo and assetInfo.parentBundleId ~= nil
		end
		-- We show an asset if it is separately for sale from the bundle it is in
		local partOfBundleAndOffsale = partOfBundle and not assetInfo.isForSale
		if GetFFlagIBEnableLimitedBundle() then
			partOfBundleAndOffsale = partOfBundle
		end

		local itemType, id

		if partOfBundleAndOffsale then
			itemType = BUNDLE
			id = UtilityFunctions.getBundleId(assetInfo)
		else
			itemType = ASSET
			id = assetInfo.assetId
		end

		analytics.reportItemDetailPageOpened(itemType, id)
		if GetFFlagIBEnableSendCounters() then
			store:dispatch(SendCounter(Constants.Counters.ItemDetailPageOpened))
		end
	end)
end

return ReportOpenDetailsPage