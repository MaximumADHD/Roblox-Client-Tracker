--[[
	Shows the Preview Panel grid

	Required Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
		callback FinishSelectingFromExplorer: function to call when we have finished adding an item as a new tile
		callback StartSelectingFromExplorer: function to start selecting from explorer, which mapDispatchToProps provides
		Plugin Plugin: A Plugin ContextItem, which is provided via withContext.
		table UserAddedAssets: the table of assets added by the user
		callback AddUserAddedAssetForPreview: function called when user added assets are changed

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number layoutOrder: render order of component in layout
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
]]

local FFlagEnablePreviewTiles = game:GetFastFlag("EnablePreviewTiles")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Components = AvatarToolsShared.Components
local ConfirmCancelDialog = Components.ConfirmCancelDialog
local ConfirmDialog = Components.ConfirmDialog
local PreviewTopBar = Components.PreviewTopBar

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local AvatarToolsSharedConstants = AccessoryAndBodyToolSharedUtil.Constants
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants
local PreviewConstantsInterface = AccessoryAndBodyToolSharedUtil.PreviewConstantsInterface
local PreviewFolderManager = AccessoryAndBodyToolSharedUtil.PreviewFolderManager

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck

local SetSearchFilter = require(Plugin.Src.Actions.SetSearchFilter)
local StartSelectingFromExplorer = require(Plugin.Src.Thunks.StartSelectingFromExplorer)
local FinishSelectingFromExplorer = require(Plugin.Src.Thunks.FinishSelectingFromExplorer)
local DeleteUserAddedAssetForPreview = require(Plugin.Src.Thunks.DeleteUserAddedAssetForPreview)
local AddUserAddedAssetForPreview = require(Plugin.Src.Thunks.AddUserAddedAssetForPreview)

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local Constants = require(Plugin.Src.Util.Constants)
local ShowDialog = require(Plugin.Src.Util.ShowDialog)

local PreviewTopBarWrapper = Roact.PureComponent:extend("PreviewTopBarWrapper")
Typecheck.wrap(PreviewTopBarWrapper, script)

function PreviewTopBarWrapper:init()
	self.previewFolder = PreviewFolderManager.new()

	self.onSearchRequested = function(searchFilter)
		self.props.SetSearchFilter(searchFilter)
	end

	self.onClickAddNewInstance = function()
		local props = self.props
		local localization = props.Localization
		local localizedText = localization:getText("Preview", "PanelBlockerAddItem")
		props.StartSelectingFromExplorer(Constants.SELECTOR_MODE.Preview, localizedText)
	end

	self.getTabForInstance = function(instance)
		for tabKey, tabInfo in pairs(PreviewConstantsInterface.getTabs()) do
			if self.isInstanceValidForTab(tabKey, instance) then
				return tabKey
			end
		end
	end

	self.isInstanceValidForTab = function(tab, instance)
		local props = self.props
		local editingItem = props.EditingItemContext:getItem()
		local tabInfo = PreviewConstantsInterface.getTabInfo(tab)
		if not tabInfo or not tabInfo.IsSelectedInstanceValid(instance) then
			return false
		end
		local isPreviewModel = instance:FindFirstAncestor("LayeredClothingEditorPreview") ~= nil
		local isEditingItem = instance == editingItem
		local isMannequin = instance == editingItem.Parent

		return not (isPreviewModel or isEditingItem or isMannequin)
	end

	self.isSelectedInstanceValid = function(instance)
		-- check if valid for any tabs
		if self.getTabForInstance(instance) then
			return true
		end

		-- also allow folders
		if instance:IsA("Folder") then
			return true
		end

		return false
	end

	self.onInstanceSelectorValidSelection = function(instance)
		local props = self.props
		ShowDialog(props.Plugin, props.Localization, ConfirmCancelDialog,{
			Text = self.props.Localization:getText("Preview", "ConfirmAddTile", {
				itemName = instance.Name,
			}),
			OnConfirm = function()
				props.FinishSelectingFromExplorer(instance)

				local tab = self.getTabForInstance(instance)
				if tab then
					props.AddUserAddedAssetForPreview(tab, instance:Clone())
				elseif instance:IsA("Folder") then
					self.previewFolder:addFolderPath(instance)
					self.previewFolder:addDirtyFolders(
						self.props.UserAddedAssets,
						self.isInstanceValidForTab,
						self.props.AddUserAddedAssetForPreview
					)
				end
			end,
		})
	end

	self.onInstanceSelectorInvalidSelection = function(instance)
		local props = self.props
		local localization = props.Localization
		ShowDialog(props.Plugin, props.Localization, ConfirmDialog,{
			Text = localization:getText("Preview", "InvalidAdd"),
		})
	end
end

function PreviewTopBarWrapper:render()
	local props = self.props
	local layoutOrder = props.layoutOrder

	return Roact.createElement(PreviewTopBar, {
		LayoutOrder = layoutOrder,
		OnSearchRequested = self.onSearchRequested,
		IsSelectedInstanceValid = self.isSelectedInstanceValid,
		OnClickAddNewInstance = self.onClickAddNewInstance,
		OnInstanceSelectorValidSelection = self.onInstanceSelectorValidSelection,
		OnInstanceSelectorInvalidSelection = self.onInstanceSelectorInvalidSelection,
	})
end

function PreviewTopBarWrapper:didMount()
	local props = self.props

	if not next(self.props.UserAddedAssets) then
		self.previewFolder:resetAllFoldersAttributes()
	end

	self.previewFolder:cleanDirtyFolders(self.props.UserAddedAssets, self.props.DeleteUserAddedAssetForPreview)
	self.previewFolder:addDirtyFolders(
		self.props.UserAddedAssets,
		self.isInstanceValidForTab,
		self.props.AddUserAddedAssetForPreview
	)
end

PreviewTopBarWrapper = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	EditingItemContext = EditingItemContext,
})(PreviewTopBarWrapper)

local function mapStateToProps(state, props)
	local previewStatus = state.previewStatus
	return {
		UserAddedAssets = previewStatus.userAddedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetSearchFilter = function(searchFilter)
			dispatch(SetSearchFilter(searchFilter))
		end,
		StartSelectingFromExplorer = function(mode, message)
			dispatch(StartSelectingFromExplorer(mode, message))
		end,
		FinishSelectingFromExplorer = function(item)
			dispatch(FinishSelectingFromExplorer())
		end,
		DeleteUserAddedAssetForPreview = function(tab, index)
			dispatch(DeleteUserAddedAssetForPreview(tab, index))
		end,
		AddUserAddedAssetForPreview = function(tab, asset)
			dispatch(AddUserAddedAssetForPreview(tab, asset))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PreviewTopBarWrapper)