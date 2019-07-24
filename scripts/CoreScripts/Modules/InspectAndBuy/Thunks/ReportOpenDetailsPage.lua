local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

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

		local itemType, id

		if partOfBundle then
			itemType = BUNDLE
			id = UtilityFunctions.getBundleId(assetInfo)
		else
			itemType = ASSET
			id = assetInfo.assetId
		end

		analytics.reportItemDetailPageOpened(itemType, id)
	end)
end

return ReportOpenDetailsPage