local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local GetVote = require(Plugin.Core.Actions.GetVote)
local SetVoteLoading = require(Plugin.Core.Actions.SetVoteLoading)

return function(networkInterface: any, assetId: number, assetType: number, checkCache: boolean)
	return function(store)
		if checkCache then
			local state = store:getState()
			if state ~= nil and state.voting ~= nil and state.voting[assetId] ~= nil then
				if state.voting[assetId]["VoteFetchAttempted"] then
					return
				else
					store:dispatch(SetVoteLoading(assetId, true, true))
				end
			end
		end
		return networkInterface:getVote(assetId, assetType):andThen(function(result)
			local data = result.responseBody
			local userVote = if data == nil then nil else data.userVote
			if userVote ~= nil then
				store:dispatch(GetVote(assetId, userVote))
			end

			store:dispatch(SetVoteLoading(assetId, false, true))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Could not get vote data")
			end

			store:dispatch(NetworkError(result))
			store:dispatch(SetVoteLoading(assetId, false, true))
		end)
	end
end
