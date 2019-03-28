local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, settings, searchTerm)
	return function(store)
		if store:getState().assets.isLoading then
			return
		end

		store:dispatch(StopAllSounds())

		local oldPageInfo = store:getState().pageInfo

		local sortIndex = Sort.canSort(searchTerm, oldPageInfo.categoryIndex)
			and oldPageInfo.sortIndex or 1

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			searchTerm = searchTerm,
			sortIndex = sortIndex,
			page = 1,
		}))
	end
end
