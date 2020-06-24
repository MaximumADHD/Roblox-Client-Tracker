local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetPluginData = require(Plugin.Core.Actions.SetPluginData)

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:getPluginInfo(assetId):andThen(function(result)
			local response = result.responseBody.data

			-- Supports array, we only need one data.
			store:dispatch(SetPluginData(response[1]))
		end, function(err)
			if DebugFlags.shouldDebugWarnings() then
				warn("Unable to fetch plugin data")
			end

			store:dispatch(NetworkError(err))
		end)
	end
end
