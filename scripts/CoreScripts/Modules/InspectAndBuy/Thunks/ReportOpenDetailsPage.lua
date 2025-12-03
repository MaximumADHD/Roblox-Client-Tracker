local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local SendCounter = require(InspectAndBuyFolder.Thunks.SendCounter)
local Constants = require(InspectAndBuyFolder.Constants)

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
		local partOfBundle = assetInfo and assetInfo.parentBundleId ~= nil
		-- We show an asset if it is separately for sale from the bundle it is in
		local partOfBundleAndOffsale = partOfBundle

		local itemType, id

		if partOfBundleAndOffsale then
			itemType = BUNDLE
			id = UtilityFunctions.getBundleId(assetInfo)
		else
			itemType = ASSET
			id = assetInfo.assetId
		end

		analytics.reportItemDetailPageOpened(itemType, id)
		store:dispatch(SendCounter(Constants.Counters.ItemDetailPageOpened))
	end)
end

return ReportOpenDetailsPage
