local Plugin = script.Parent.Parent.Parent.Parent

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, groupIndex)
	return function(store)
		if store:getState().assets.isLoading then
			return
		end

		store:dispatch(StopAllSounds())

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, nil, {
			searchTerm = "",
			sortIndex = 1,
			groupIndex = groupIndex,
			page = 1,
		}))
	end
end
