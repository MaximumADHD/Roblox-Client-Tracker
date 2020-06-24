local Plugin = script.Parent.Parent.Parent.Parent

local GetFavoriteCounts = require(Plugin.Core.Actions.GetFavoriteCounts)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getFavoriteCounts(assetId):andThen(function(result)
			store:dispatch(GetFavoriteCounts(assetId, result.responseBody))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
