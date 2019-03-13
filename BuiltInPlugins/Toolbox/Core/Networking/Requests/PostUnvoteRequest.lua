local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local PostUnvote = require(Plugin.Core.Actions.PostUnvote)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:postUnvote(assetId):andThen(function(result)
			local data = result.responseBody
			store:dispatch(PostUnvote(assetId, data))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Unvoting unsucessful")
			end

			store:dispatch(NetworkError(result))
		end)
	end
end
