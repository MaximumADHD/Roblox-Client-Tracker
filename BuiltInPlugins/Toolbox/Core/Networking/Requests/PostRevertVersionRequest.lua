local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)

local GetVersionsHistoryRequest = require(Plugin.Core.Networking.Requests.GetVersionsHistoryRequest)

return function(networkInterface, assetId, versionNumber)
	return function(store)
		return networkInterface:postRevertVersion(assetId, versionNumber):andThen(function(result)
			-- If success, we will need to refetch the data.
			store:dispatch(GetVersionsHistoryRequest(networkInterface, assetId))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from ReverVersion")
			end

			store:dispatch(NetworkError(result))
		end)
	end
end