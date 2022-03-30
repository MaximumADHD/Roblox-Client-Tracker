local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetHomeConfiguration = require(Plugin.Core.Actions.SetHomeConfiguration)

return function(networkInterface, assetType: Enum.AssetType, locale: string?)
	return function(store)
		return networkInterface:getHomeConfiguration(assetType, locale):andThen(function(result)
			local data = result.responseBody
			store:dispatch(SetHomeConfiguration(assetType, data))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn(string.format("Could not get home configuration for assetType %s", assetType.Name))
			end

			store:dispatch(NetworkError(result))
		end)
	end
end
