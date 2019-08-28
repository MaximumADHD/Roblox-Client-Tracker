local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Libs.Cryo)

local RequestReason = require(Plugin.Core.Types.RequestReason)

local GetManageableGroupsRequest = require(Plugin.Core.Networking.Requests.GetManageableGroupsRequest)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

local Category = require(Plugin.Core.Types.Category)

return function(networkInterface, tabName, newCategories,  settings, options)
	return function(store)
		store:dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, {
			creator = Cryo.None,
			currentTab = tabName,
			categories = Category.getCategories(tabName, store:getState().roles),
			requestReason = RequestReason.ChangeTabs,
			categoryIndex = options.categoryIndex,
			searchTerm = options.searchTerm,
			sortIndex = options.sortIndex,
			groupIndex = options.groupIndex,
			targetPage = 1,
			currentPage = 0,
			selectedBackgroundIndex = options.selectedBackgroundIndex,
		}))

		-- This is an independent request
		if tabName == Category.INVENTORY_KEY then
			store:dispatch(GetManageableGroupsRequest(networkInterface))
		end
	end
end