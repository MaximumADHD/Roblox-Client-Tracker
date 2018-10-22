local Plugin = script.Parent.Parent.Parent.Parent

local GetAssetsRequest = require(Plugin.Core.Networking.Requests.GetAssetsRequest)

local NextPage = require(Plugin.Core.Actions.NextPage)

return function(networkInterface)
	return function(store)
		if store:getState().assets.isLoading or store:getState().assets.hasReachedBottom then
			return
		end

		store:dispatch(NextPage())
		store:dispatch(GetAssetsRequest(networkInterface, store:getState().pageInfo))
	end
end
