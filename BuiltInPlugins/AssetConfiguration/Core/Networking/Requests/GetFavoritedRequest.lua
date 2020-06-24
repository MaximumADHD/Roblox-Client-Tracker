local Plugin = script.Parent.Parent.Parent.Parent

local GetFavorited = require(Plugin.Core.Actions.GetFavorited)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

local function getFavoritedFromResult(result)
	if result.responseBody == "null" then
		return false
	else
		return true
	end
end

return function(networkInterface, userId, assetId)
	return function(store)
		return networkInterface:getFavorited(userId, assetId):andThen(function(result)
			store:dispatch(GetFavorited(assetId, getFavoritedFromResult(result)))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
