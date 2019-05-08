local InspectAndBuyFolder = script.Parent.Parent
local Thunk = require(InspectAndBuyFolder.Thunk)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)

local requiredServices = {
	Analytics,
}

local BUNDLE = "Bundle"
local ASSET = "Asset"

--[[
	Reports analytics for trying on an item. Updates the store.
]]
local function TryOnItem(tryingOn, assetId, assetTypeId, partOfBundle, bundleId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local itemType, id

		if partOfBundle then
			itemType = BUNDLE
			id = bundleId
		else
			itemType = ASSET
			id = assetId
		end

		analytics.reportTryOnButtonClicked(itemType, id)
		store:dispatch(SetTryingOnInfo(tryingOn, assetId, assetTypeId))
	end)
end

return TryOnItem