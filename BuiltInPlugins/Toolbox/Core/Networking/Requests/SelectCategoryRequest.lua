local Plugin = script.Parent.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)
local RequestReason = require(Plugin.Core.Types.RequestReason)
local Cryo = require(Plugin.Libs.Cryo)
local RobloxAPI = require(Plugin.Libs.Framework).RobloxAPI

local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

local FFlagEnableDefaultSortFix2 = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagToolboxShowRobloxCreatedAssetsForLuobu = game:GetFastFlag("ToolboxShowRobloxCreatedAssetsForLuobu")

local FFlagFixLuobuVideoCategory = game:DefineFastFlag("FixLuobuVideoCategory", false)

local function isVideo(categoryKey, categories)
	if FFlagUseCategoryNameInToolbox then
		return Category.categoryIsVideo(categoryKey)
	else
		return Category.categoryIsVideo(categories, categoryKey)
	end
end

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

		local creator = nil
		if FFlagToolboxShowRobloxCreatedAssetsForLuobu and RobloxAPI:baseURLHasChineseHost() then
			local currentTab
			if FFlagFixLuobuVideoCategory then
				currentTab = PageInfoHelper.getCurrentTab(store:getState().pageInfo)
			else
				currentTab = store:getState().pageInfo.currentTab
			end
			local categories = store:getState().pageInfo.categories

			if currentTab == Category.MARKETPLACE_KEY then
				if FFlagFixLuobuVideoCategory and isVideo(categoryKey, categories) then
					creator = Category.CREATOR_ROBLOX_DEVELOP_API
				else
					creator = Category.CREATOR_ROBLOX
				end
			end
		end

		store:dispatch(
			UpdatePageInfoAndSendRequest(
				networkInterface,
				settings,
				{
					audioSearchInfo = Cryo.None,
					categoryName = categoryKey,
					categoryIndex = (not FFlagUseCategoryNameInToolbox) and (categoryKey),
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
