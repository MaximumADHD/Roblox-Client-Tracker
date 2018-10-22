local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local PostInsertAsset = require(Plugin.Core.Actions.PostInsertAsset)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:postInsertAsset(assetId):andThen(function(result)
			local data = result.responseBody
			store:dispatch(PostInsertAsset(assetId, data))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
