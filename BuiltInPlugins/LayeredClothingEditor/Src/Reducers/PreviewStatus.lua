local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants

return Rodux.createReducer({
	categoryFilter = "",
	searchFilter = "",
	docked = true,
	selectedTab = PreviewConstants.TABS_KEYS.None,
	selectedAssets = {}, --saved which assets are selected for previewing, maps tabs -> { ids }
	userAddedAssets = {},
}, {
	SetCategoryFilter = function(state, action)
		return Cryo.Dictionary.join(state, {
			categoryFilter = action.categoryFilter,
		})
	end,

	SetSearchFilter = function(state, action)
		return Cryo.Dictionary.join(state, {
			searchFilter = action.searchFilter,
		})
	end,

	SetDocked = function(state, action)
		return Cryo.Dictionary.join(state, {
			docked = action.docked,
		})
	end,

	SetUserAddedAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			userAddedAssets = action.userAddedAssets,
		})
	end,

	SelectPreviewTab = function(state, action)
		return Cryo.Dictionary.join(state, {
			selectedTab = action.selectedTab,
		})
	end,
	SetPreviewAssetsSelected = function(state, action)
		return Cryo.Dictionary.join(state, {
			selectedAssets = action.selectedAssets,
		})
	end,
})