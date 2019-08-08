local Plugin = script.Parent.Parent.Parent.Parent

local GetAssetsRequest = require(Plugin.Core.Networking.Requests.GetAssetsRequest)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

return function(networkInterface, settings, newPageInfo)
	return function(store)
		if store:getState().assets.isLoading then
			return
		end

		store:dispatch(UpdatePageInfo(newPageInfo, settings))
		store:dispatch(ClearAssets())
		store:dispatch(GetAssetsRequest(networkInterface, store:getState().pageInfo))
	end
end
