local Plugin = script.Parent.Parent.Parent.Parent

local Constants = require(Plugin.Core.Util.Constants)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UploadResult = require(Plugin.Core.Actions.UploadResult)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

return function(networkInterface, assetId, fromStatus, toStatus, price)
	return function(store)
		local handlerFunc = function(response)
			if response.responseCode == 200 then
				store:dispatch(UploadResult(true))
			else
				store:dispatch(NetworkError(response))
				store:dispatch(UploadResult(false))
			end
		end

		local errorFunc = function(response)
			if DebugFlags.shouldDebugWarnings() then
				warn(("Lua toolbox: Could not configure sales"))
			end
			store:dispatch(NetworkError(response))
			store:dispatch(UploadResult(false))
		end

		local setOnSale = toStatus == Constants.AssetStatus.OnSale
		local saleStatus = setOnSale and Constants.AssetStatus.OnSale or Constants.AssetStatus.OffSale
		local salesPrice = setOnSale and price or nil

		if fromStatus ~= toStatus then
			networkInterface:configureSales(assetId, saleStatus, salesPrice):andThen(handlerFunc, errorFunc)
		else
			networkInterface:updateSales(assetId, salesPrice):andThen(handlerFunc, errorFunc)
		end
	end
end