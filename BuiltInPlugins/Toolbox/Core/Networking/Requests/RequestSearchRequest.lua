local FFlagToolboxHomeViewAnalyticsUpdate = game:GetFastFlag("ToolboxHomeViewAnalyticsUpdate")
local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, settings, searchTerm, categoryName, isTopKeyword: boolean?)
	return function(store)
		store:dispatch(StopAllSounds())

		local oldPageInfo = store:getState().pageInfo

		local sortIndex = Sort.canSort(searchTerm, categoryName or oldPageInfo.categoryName) and oldPageInfo.sortIndex
			or 1

		if FFlagToolboxHomeViewAnalyticsUpdate then
			store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
				searchTerm = searchTerm,
				sortIndex = sortIndex,
				categoryName = categoryName,
				targetPage = 1,
				currentPage = 0,
				requestReason = RequestReason.StartSearch,
				isTopKeyword = isTopKeyword or false,
			}))
		else
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
end
