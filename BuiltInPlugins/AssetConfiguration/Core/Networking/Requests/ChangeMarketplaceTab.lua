local FFlagToolboxShowGroupCreations = game:GetFastFlag("ToolboxShowGroupCreations")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Libs.Cryo)

local RequestReason = require(Plugin.Core.Types.RequestReason)

local GetToolboxManageableGroupsRequest = require(Plugin.Core.Networking.Requests.GetToolboxManageableGroupsRequest)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

local Category = require(Plugin.Core.Types.Category)

local FFlagToolboxShowRobloxCreatedAssetsForLuobu = game:GetFastFlag("ToolboxShowRobloxCreatedAssetsForLuobu")

return function(networkInterface, tabName, newCategories,  settings, options)
	return function(store)

		local categories = Category.getCategories(tabName, store:getState().roles)

		local creator = Cryo.None
		if FFlagToolboxShowRobloxCreatedAssetsForLuobu then
			creator = options.creator or Cryo.None
		end

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			audioSearchInfo = Cryo.None,
			creator = creator,
			currentTab = tabName,
			categories = categories,
			requestReason = RequestReason.ChangeTabs,
			categoryIndex = (not FFlagUseCategoryNameInToolbox) and (options.categoryIndex),
			categoryName = options.categoryName,
			searchTerm = options.searchTerm,
			sortIndex = options.sortIndex,
			groupIndex = options.groupIndex,
			targetPage = 1,
			currentPage = 0,
			selectedBackgroundIndex = options.selectedBackgroundIndex,
		}))

		-- This is an independent request
		local shouldGetGroups
		if FFlagToolboxShowGroupCreations then
			shouldGetGroups = tabName == Category.INVENTORY_KEY or tabName == Category.CREATIONS_KEY
		else
			shouldGetGroups = tabName == Category.INVENTORY_KEY
		end

		if shouldGetGroups then
			store:dispatch(GetToolboxManageableGroupsRequest(networkInterface))
		end
	end
end
