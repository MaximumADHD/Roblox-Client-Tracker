local Plugin = script.Parent.Parent.Parent.Parent

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local PostVote = require(Plugin.Core.Actions.PostVote)

return function(networkInterface, assetId, userVote)
	return function(store)
		return networkInterface:postVote(assetId, userVote):andThen(function(result)
			local data = result.responseBody
			store:dispatch(PostVote(assetId, data, userVote))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
