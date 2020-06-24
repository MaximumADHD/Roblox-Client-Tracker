local Plugin = script.Parent.Parent.Parent.Parent

local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UploadResult = require(Plugin.Core.Actions.UploadResult)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local ConfigureItemTagsRequest = require(Plugin.Core.Networking.Requests.ConfigureItemTagsRequest)

return function(networkInterface, assetId, fromStatus, toStatus, fromPrice, toPrice, fromItemTags, toTags)
	return function(store)
		local handlerFunc = function(response)
			store:dispatch(ConfigureItemTagsRequest(networkInterface, assetId, fromItemTags, toTags))
		end

		local errorFunc = function(response)
			if DebugFlags.shouldDebugWarnings() then
				warn(("Lua toolbox: Could not configure sales"))
			end
			store:dispatch(NetworkError(response))
			store:dispatch(UploadResult(false))
		end

		local setOnSale = toStatus == AssetConfigConstants.ASSET_STATUS.OnSale
		local saleStatus = setOnSale and AssetConfigConstants.ASSET_STATUS.OnSale or AssetConfigConstants.ASSET_STATUS.OffSale
		local salesPrice = setOnSale and toPrice or nil

		if fromStatus ~= toStatus then
			networkInterface:configureSales(assetId, saleStatus, salesPrice):andThen(handlerFunc, errorFunc)
		elseif fromStatus == AssetConfigConstants.ASSET_STATUS.OnSale and fromPrice ~= toPrice then
			networkInterface:updateSales(assetId, salesPrice):andThen(handlerFunc, errorFunc)
		else
			store:dispatch(ConfigureItemTagsRequest(networkInterface, assetId, fromItemTags, toTags))
		end
	end
end