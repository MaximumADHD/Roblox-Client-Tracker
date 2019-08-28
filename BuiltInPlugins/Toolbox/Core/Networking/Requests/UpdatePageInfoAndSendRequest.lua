local Plugin = script.Parent.Parent.Parent.Parent

local RequestReason = require(Plugin.Core.Types.RequestReason)

local GetAssetsRequest = require(Plugin.Core.Networking.Requests.GetAssetsRequest)

local ClearAssets = require(Plugin.Core.Actions.ClearAssets)
local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

return function(networkInterface, settings, newPageInfo)
	return function(store)
		if not RequestReason.IsUpdate(newPageInfo.requestReason) then
			-- For updating current page, we don't refresh the page, everything else, yes, we do.
			store:dispatch(ClearAssets())
		end

		-- Then, in the GetAssetsRequest, we can check if current pageInfo matches pageInfo when started the request.
		store:dispatch(UpdatePageInfo(newPageInfo, settings))
		store:dispatch(GetAssetsRequest(networkInterface, store:getState().pageInfo))
	end
end
