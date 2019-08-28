local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, settings, categoryIndex)
	return function(store)
		store:dispatch(StopAllSounds())

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			categoryIndex = categoryIndex,
			searchTerm = "",
			sortIndex = Sort.getDefaultSortForCategory(categoryIndex),
			targetPage = 1,
			currentPage = 0,
			requestReason = RequestReason.ChangeCategory,
		}))

	end
end
