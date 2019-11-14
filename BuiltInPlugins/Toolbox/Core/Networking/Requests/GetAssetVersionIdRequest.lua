local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetAssetVersionId = require(Plugin.Core.Actions.SetAssetVersionId)
local HttpService = game:getService("HttpService")

return function(networkInterface, assetId)
	return function(store)
		return networkInterface:deprecated_getAssetVersionId(assetId):andThen(function(result)
			local data = result.responseBody

			-- TODO: replace this hacky regexing with an endpoint that accepts the asset ID of a plugin
			-- and returns the asset version ID associated with the most updated version of that plugin

			-- While this endpoint doesn't exist, we'll have to regex from the html of the plugin info page
			local regex = "class=\"asset%-version%-id\" value=\"(%d+)\""
			local _, _, value = string.find(data, regex)
			local assetVersionId = tonumber(value)
			store:dispatch(SetAssetVersionId(assetId, assetVersionId))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Unable to access plugin info page")
			end

			store:dispatch(NetworkError(result))
		end)
	end
end
