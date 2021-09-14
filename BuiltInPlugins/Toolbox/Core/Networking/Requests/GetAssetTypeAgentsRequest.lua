local Plugin = script.Parent.Parent.Parent.Parent

local SetAssetConfigAssetTypeAgents = require(Plugin.Core.Actions.SetAssetConfigAssetTypeAgents)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

return function(networkInterface, assetType)
	return function(store)
		return networkInterface:getAssetTypeAgents(assetType):andThen(function(result)
			store:dispatch(SetAssetConfigAssetTypeAgents(result.responseBody.agents))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
