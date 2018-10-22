local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:postUnvote(assetId):andThen(function(result)
			local data = result.responseBody
			store:dispatch(PostUnvote(assetId, data))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
