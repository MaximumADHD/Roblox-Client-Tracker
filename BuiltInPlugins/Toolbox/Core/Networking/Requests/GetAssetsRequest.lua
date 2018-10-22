local Plugin = script.Parent.Parent.Parent.Parent

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetLoading = require(Plugin.Core.Actions.SetLoading)

return function(networkInterface, pageInfo)
	return function(store)
		if store:getState().assets.isLoading or store:getState().assets.hasReachedBottom then
			return
		end

		store:dispatch(SetLoading(true))
		return networkInterface:getAssets(pageInfo):andThen(function(result)
			local data = result.responseBody
			store:dispatch(GetAssets(data))
			store:dispatch(SetLoading(false))
		end, function(result)
			store:dispatch(NetworkError(result))
			store:dispatch(SetLoading(false))
		end)
	end
end
