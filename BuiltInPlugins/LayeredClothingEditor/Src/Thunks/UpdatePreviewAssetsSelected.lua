--[[
	set which preview assets are currently selected

	Params:
		number assetId: the key of the preview tab to select
		boolean isAddingAsset: true means we're adding this asset, false means we're removing
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants
local PreviewConstantsInterface = AccessoryAndBodyToolSharedUtil.PreviewConstantsInterface

local SetPreviewAssetsSelected = require(Plugin.Src.Actions.SetPreviewAssetsSelected)

local function getUpdatedSelectedAssetsForTab(id, isAddingAsset, isMultiSelect, selectedAssetsForTab)
	if isMultiSelect then
		return Cryo.Dictionary.join(selectedAssetsForTab or {}, {
			[id] = isAddingAsset and true or Cryo.None
		})
	end

	if isAddingAsset then
		return {[id] = true}
	end
	return selectedAssetsForTab and Cryo.Dictionary.join(selectedAssetsForTab, {
		[id] = Cryo.None
	}) or nil
end

local function hasASelectedAvatar(selectedAssets)
	local selectedAvatars = selectedAssets[PreviewConstants.TABS_KEYS.Avatars]
	if not selectedAvatars then
		return false
	end

	if next(selectedAvatars) then
		return true
	end

	return false
end

return function(id, isAddingAsset)
	return function(store)
		local state = store:getState()
		local selectedTab = state.previewStatus.selectedTab

		local newSelectedAssets = Cryo.Dictionary.join(state.previewStatus.selectedAssets, {})

		if id then
			local isTabMultiSelect = PreviewConstantsInterface.isTabMultiSelect(selectedTab)
			newSelectedAssets[selectedTab] =
				getUpdatedSelectedAssetsForTab(id, isAddingAsset, isTabMultiSelect, newSelectedAssets[selectedTab])
		end

		-- an avatar should always be selected, select default if none are in the table
		if not hasASelectedAvatar(newSelectedAssets) then
			local avatarTab = PreviewConstants.TABS_KEYS.Avatars
			local avatarTabInfo = PreviewConstantsInterface.getTabInfo(avatarTab)
			if not newSelectedAssets[avatarTab] then
				newSelectedAssets[avatarTab] = {}
			end

			local _, defaultBundleId = next(avatarTabInfo.BundleIds)
			newSelectedAssets[avatarTab][defaultBundleId] = true
		end

		store:dispatch(SetPreviewAssetsSelected(newSelectedAssets))
	end
end