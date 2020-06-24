local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetAssetConfigThumbnailStatus = require(Actions.SetAssetConfigThumbnailStatus)
local NetworkError = require(Actions.NetworkError)

-- I only need to check thumbnail status for one assetId, but it supports patch get.
return function(networkInterface, assetId)
	return function(store)
		local errorFunc = function(result)
			store:dispatch(NetworkError(result))
		end

		local handlerFunc = function(result)
			local response = result.responseBody

			store:dispatch(SetAssetConfigThumbnailStatus(response.data[1].state))
		end

		networkInterface:getThumbnailStatus(assetId):andThen(handlerFunc, errorFunc)
	end
end
