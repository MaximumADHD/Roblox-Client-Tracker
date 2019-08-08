local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local CreateFavorite = require(Actions.CreateFavorite)
local DeleteFavorite = require(Actions.DeleteFavorite)
local NetworkError = require(Actions.NetworkError)

return function(networkInterface, userId, assetId, currentFavorited)
	return function(store)
		if currentFavorited then
			return networkInterface:deleteFavorite(userId, assetId):andThen(function(result)
				store:dispatch(DeleteFavorite(assetId))
			end, function(result)
				store:dispatch(NetworkError(result))
			end)
		else
			return networkInterface:postFavorite(userId, assetId):andThen(function(result)
				store:dispatch(CreateFavorite(assetId))
			end, function(result)
				store:dispatch(NetworkError(result))
			end)
		end
	end
end
