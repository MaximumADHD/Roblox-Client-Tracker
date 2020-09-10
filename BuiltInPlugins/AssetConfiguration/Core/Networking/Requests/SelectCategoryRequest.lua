local Plugin = script.Parent.Parent.Parent.Parent

local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)
local Cryo = require(Plugin.Libs.Cryo)

local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

local FFlagEnableDefaultSortFix2 = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

-- TODO rename categoryKey to categoryName when FFlagUseCategoryNameInToolbox is retired
return function(networkInterface, settings, categoryKey)
	return function(store)
		store:dispatch(StopAllSounds())

		local sortIndex
		if FFlagUseCategoryNameInToolbox then
			sortIndex = Sort.getDefaultSortForCategory(categoryKey)
		else
			local currentTab = store:getState().pageInfo.currentTab
			sortIndex = Sort.getDefaultSortForCategory(FFlagEnableDefaultSortFix2 and currentTab or nil, categoryKey)
		end
		store:dispatch(
			UpdatePageInfoAndSendRequest(
				networkInterface,
				settings,
				{
					audioSearchInfo = Cryo.None,
					categoryName = categoryKey,
					categoryIndex = (not FFlagUseCategoryNameInToolbox) and (categoryKey),
					searchTerm = "",
					sortIndex = sortIndex,
					targetPage = 1,
					currentPage = 0,
					requestReason = RequestReason.ChangeCategory,
				}
			)
		)
	end
end
