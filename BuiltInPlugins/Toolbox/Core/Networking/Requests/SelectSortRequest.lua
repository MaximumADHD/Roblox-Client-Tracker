local Plugin = script.Parent.Parent.Parent.Parent

local RequestReason = require(Plugin.Core.Types.RequestReason)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

return function(networkInterface, settings, sortIndex)
	return function(store)
		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			sortIndex = sortIndex,
			targetPage = 1,
			currentPage = 0,
			requestReason = RequestReason.ChangeSort,
		}))
	end
end
