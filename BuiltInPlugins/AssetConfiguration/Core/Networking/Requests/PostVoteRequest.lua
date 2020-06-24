local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local PostVote = require(Plugin.Core.Actions.PostVote)

return function(networkInterface, assetId, userVote)
	return function(store)
		return networkInterface:postVote(assetId, userVote):andThen(function(result)
			local data = result.responseBody
			store:dispatch(PostVote(assetId, data, userVote))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Voting unsucessful")
			end

			store:dispatch(NetworkError(result))
		end)
	end
end
