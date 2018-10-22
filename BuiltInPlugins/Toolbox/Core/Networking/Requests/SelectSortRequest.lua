local Plugin = script.Parent.Parent.Parent.Parent

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

return function(networkInterface, settings, sortIndex)
	return function(store)
		if store:getState().assets.isLoading then
			return
		end

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			sortIndex = sortIndex,
		}))
	end
end
