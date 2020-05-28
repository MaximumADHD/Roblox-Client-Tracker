local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, settings, searchTerm)
	return function(store)
		store:dispatch(StopAllSounds())

		local oldPageInfo = store:getState().pageInfo

		local sortIndex = Sort.canSort(searchTerm, FFlagUseCategoryNameInToolbox and oldPageInfo.categoryName or oldPageInfo.categoryIndex)
            and oldPageInfo.sortIndex or 1

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			searchTerm = searchTerm,
			sortIndex = sortIndex,
			targetPage = 1,
			currentPage = 0,
			requestReason = RequestReason.StartSearch,
		}))
	end
end
