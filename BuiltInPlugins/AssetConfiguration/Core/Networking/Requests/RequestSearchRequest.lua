local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

-- FFlagToolboxSaveSearchWhenSwitchingCategories adds optional param categoryName
return function(networkInterface, settings, searchTerm, categoryName)
	return function(store)
		store:dispatch(StopAllSounds())

		local oldPageInfo = store:getState().pageInfo

		local sortIndex = Sort.canSort(searchTerm, categoryName or oldPageInfo.categoryName)
			and oldPageInfo.sortIndex or 1

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			searchTerm = searchTerm,
			sortIndex = sortIndex,
			categoryName = categoryName,
			targetPage = 1,
			currentPage = 0,
			requestReason = RequestReason.StartSearch,
		}))
	end
end
