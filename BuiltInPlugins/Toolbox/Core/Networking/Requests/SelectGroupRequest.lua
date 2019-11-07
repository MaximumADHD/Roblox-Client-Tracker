local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, groupIndex)
	return function(store)
		store:dispatch(StopAllSounds())

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, nil, {
			searchTerm = "",
			sortIndex = Sort.getDefaultSortForGroups(store:getState().pageInfo),
			groupIndex = groupIndex,
			targetPage = 1,
			currentPage = 0,
			requestReason = RequestReason.ChangeGroup,
		}))
	end
end
