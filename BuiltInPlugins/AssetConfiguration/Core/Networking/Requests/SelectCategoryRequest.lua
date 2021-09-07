local Plugin = script.Parent.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)
local Cryo = require(Plugin.Libs.Cryo)

local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

return function(networkInterface, settings, categoryName)
	return function(store)
		store:dispatch(StopAllSounds())

		local sortIndex = Sort.getDefaultSortForCategory(categoryName)
		
		local creator = nil
		if showRobloxCreatedAssets() then
			local currentTab = PageInfoHelper.getCurrentTab(store:getState().pageInfo)
			if currentTab == Category.MARKETPLACE_KEY and Category.categoryIsVideo(categoryName) then
				creator = Category.CREATOR_ROBLOX_DEVELOP_API
			else
				creator = Category.CREATOR_ROBLOX
			end
		end

		store:dispatch(
			UpdatePageInfoAndSendRequest(
				networkInterface,
				settings,
				{
					audioSearchInfo = Cryo.None,
					categoryName = categoryName,
					creator = creator,
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
