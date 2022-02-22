local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local RequestReason = require(Plugin.Core.Types.RequestReason)

local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

local GetToolboxManageableGroupsRequest = require(Plugin.Core.Networking.Requests.GetToolboxManageableGroupsRequest)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

local Category = require(Plugin.Core.Types.Category)

local StopAllSounds = require(Plugin.Core.Actions.StopAllSounds)

return function(networkInterface, tabName, newCategories, settings, options)
	return function(store)
		local categories = Category.getCategories(tabName, store:getState().roles)

		local creator = Cryo.None
		if showRobloxCreatedAssets() then
			creator = options.creator or Cryo.None
		end

		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			audioSearchInfo = Cryo.None,
			creator = creator,
			currentTab = tabName,
			categories = categories,
			requestReason = RequestReason.ChangeTabs,
			categoryName = options.categoryName,
			searchTerm = options.searchTerm,
			sortIndex = options.sortIndex,
			groupIndex = options.groupIndex,
			targetPage = 1,
			currentPage = 0,
			selectedBackgroundIndex = options.selectedBackgroundIndex,
		}))

		-- This is an independent request
		local shouldGetGroups = tabName == Category.INVENTORY_KEY or tabName == Category.CREATIONS_KEY

		if shouldGetGroups then
			store:dispatch(GetToolboxManageableGroupsRequest(networkInterface))
		end

		store:dispatch(StopAllSounds())
	end
end
