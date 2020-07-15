local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetAssetConfigData = require(Actions.SetAssetConfigData)
local firstToUpper = require(Plugin.Core.Util.firstToUpper)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local UpdateAssetConfigData = require(Actions.UpdateAssetConfigData)

return function(networkInterface, assetId, isMarketBuy)
	return function(store)
		local errorFunc = function(result)
			store:dispatch(NetworkError(result))
		end

		local handlerFunc = function(creationDetailsResult)
			local creationDetailsTable = creationDetailsResult.responseBody
			if creationDetailsTable and #creationDetailsTable > 0 and creationDetailsTable[1].assetId == assetId then
				local newAssetConfigData = {}
				for key, value in pairs(creationDetailsTable[1]) do
					newAssetConfigData[firstToUpper(key)] = value
				end

				if isMarketBuy then
					store:dispatch(UpdateAssetConfigData(newAssetConfigData))
				else
					store:dispatch(SetAssetConfigData(newAssetConfigData))
				end
			end
		end
		networkInterface:getAssetCreationDetails({assetId}):andThen(handlerFunc, errorFunc)
	end
end
