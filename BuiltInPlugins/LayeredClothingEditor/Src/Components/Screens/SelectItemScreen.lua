--[[
	Opening screen of the plugin. Allows a user to select an item from workspace to be
	edited, item is verified upon selection.

	Required Props:
		callback GoToNext: request to go to next screen in flow.
		callback GoToPrevious: request to go to previous screen in flow.
	Optional Props:
		Plugin Plugin: A Plugin ContextItem, which is provided via withContext.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		table Localization: A Localization ContextItem, which is provided via withContext.
		callback ChangeTool: function to change editing tool (point/lattice), provided via mapDispatchToProps
		callback AddUserAddedAssetForPreview: adds asset into preview grid, provided via mapDispatchToProps
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)
local ChangeTool = require(Plugin.Src.Thunks.ChangeTool)
local AddUserAddedAssetForPreview = require(Plugin.Src.Thunks.AddUserAddedAssetForPreview)

local SelectFrame = require(Plugin.Src.Components.SelectFrame)
local InstanceSelector = require(Plugin.Src.Components.InstanceSelector)
local ConfirmCancelDialog = require(Plugin.Src.Components.ConfirmCancelDialog)
local ConfirmDialog = require(Plugin.Src.Components.ConfirmDialog)

local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)
local ShowDialog = require(Plugin.Src.Util.ShowDialog)
local PreviewConstants = require(Plugin.Src.Util.PreviewConstants)
local Constants = require(Plugin.Src.Util.Constants)

local SelectItemScreen = Roact.PureComponent:extend("SelectItemScreen")

local GetFFlagDebugLCEditAvatarCage = require(Plugin.Src.Flags.GetFFlagDebugLCEditAvatarCage)
local GetFFlagFixNoCageMeshIdCrash = require(Plugin.Src.Flags.GetFFlagFixNoCageMeshIdCrash)

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(SelectItemScreen, script)

function SelectItemScreen:init()
	self.state = {
		selectedPart = nil,
		invalidSelected = false,
	}

	self.checkForPreviewAvatar = function(item)
		local props = self.props

		if not ItemCharacteristics.isClothes(item) then
			return
		end

		local parent = item.Parent
		if not parent then
			return
		end

		if not ItemCharacteristics.isAvatar(parent) then
			return
		end

		local clone = parent:Clone()
		for _, child in ipairs(clone:GetChildren()) do
			if child.Name == item.Name then
				child:Destroy()
			end
		end

		props.AddUserAddedAssetForPreview(PreviewConstants.TABS_KEYS.Avatars, clone)
	end

	self.setSourceItem = function(item)
		self.props.EditingItemContext:setSourceItem(item)
		self.checkForPreviewAvatar(item)
		self.props.ChangeTool(Constants.TOOL_MODE.None)
		self.props.GoToNext()
	end

	self.onSelectNewItem = function(item)
		local props = self.props

		ShowDialog(props.Plugin, props.Localization, ConfirmCancelDialog,{
			Text = self.props.Localization:getText("Select", "LoseChanges"),
			OnConfirm = function()
				self.setSourceItem(item)
			end,
		})
	end

	self.onConfirmSelection = function()
		local state = self.state
		local props = self.props

		local selectedPart = state.selectedPart

		-- final sanity check in-case the user tries to change something about the target they selected before hitting "Next"
		if GetFFlagFixNoCageMeshIdCrash() then
			local valid = self.isSelectedInstanceValid(selectedPart)
			if not valid then
				self:setState({
					invalidSelected = true,
					selectedPart = Roact.None,
				})
				ShowDialog(props.Plugin, props.Localization, ConfirmDialog,{
					Text = self.props.Localization:getText("Select", "Invalid"),
					OnClose = function() end,
				})
				return
			end
		end

		if selectedPart then
			local currentSourceItem = props.EditingItemContext:getSourceItem()
			local newSourceItem = ItemCharacteristics.getAvatarFromMeshPart(selectedPart)
			if not currentSourceItem or currentSourceItem == newSourceItem then
				self.setSourceItem(newSourceItem)
			else
				self.onSelectNewItem(newSourceItem)
			end
		end
	end

	self.isSelectedInstanceValid = function(item)
		local props = self.props

		local editingItem = props.EditingItemContext:getItem()

		if not ItemCharacteristics.isPotentialLayeredClothingItem(item) then
			return false
		end

		if GetFFlagFixNoCageMeshIdCrash() and ItemCharacteristics.hasInvalidCage(item) then
			return false
		end

		-- avatar cage editing is for internal use only
		if not GetFFlagDebugLCEditAvatarCage() then
			local isAvatar = ItemCharacteristics.isAvatar(item)
			local isAvatarPart = item:IsA("MeshPart") and item:FindFirstChildWhichIsA("WrapTarget")
			if isAvatar or isAvatarPart then
				return false
			end
		end

		local isPreviewModel = item:FindFirstAncestor("LayeredClothingEditorPreview") ~= nil
		local isEditingItem = item == editingItem
		local isMannequin = editingItem and item == editingItem.Parent
		local isDescendant = editingItem and item:FindFirstAncestor(editingItem.Name)
		local isSibling = item and editingItem and item.Parent == editingItem.Parent

		return not (isPreviewModel or isEditingItem or isMannequin or isSibling or isDescendant)
	end

	self.onSelectValidInstance = function(instance)
		self:setState({
			selectedPart = instance,
			invalidSelected = false,
		})

		if self.ancestryChangedHandle then
			self.ancestryChangedHandle:Disconnect()
		end

		self.ancestryChangedHandle = instance.AncestryChanged:Connect(function()
			self:setState({
				selectedPart = Roact.None,
				invalidSelected = false,
			})
			self.ancestryChangedHandle:Disconnect()
			self.ancestryChangedHandle = nil
		end)
	end

	self.onInvalidSelectionInstance = function()
		self:setState({
			invalidSelected = true,
			selectedPart = Roact.None,
		})
	end
end

function SelectItemScreen:didMount()
	local sourceItem = self.props.EditingItemContext:getSourceItem()
	if sourceItem then
		self:setState({
			selectedPart = sourceItem
		})
	end
end

function SelectItemScreen:render()
	local props = self.props
	local state = self.state

	local partName = state.selectedPart and state.selectedPart.Name or ""
	local invalidSelected = state.invalidSelected
	local validPartSelected = partName ~= ""

	local theme = props.Stylizer
	local localization = props.Localization
	local partNameText = invalidSelected and localization:getText("Select", "Invalid") or partName

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = theme.BackgroundColor,
		BorderSizePixel = 0,
	}, {
		SelectFrame = Roact.createElement(SelectFrame, {
			PartName = partNameText,
			ButtonEnabled = validPartSelected,
			OnConfirmSelection = self.onConfirmSelection
		}),

		InstanceSelector = Roact.createElement(InstanceSelector, {
			IsSelectedInstanceValid = self.isSelectedInstanceValid,
			OnValidSelection = self.onSelectValidInstance,
			OnInvalidSelection = self.onInvalidSelectionInstance,
		})
	})
end

function SelectItemScreen:willUnmount()
	if self.ancestryChangedHandle then
		self.ancestryChangedHandle:Disconnect()
		self.ancestryChangedHandle = nil
	end
end


SelectItemScreen = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	EditingItemContext = EditingItemContext,
})(SelectItemScreen)

local function mapDispatchToProps(dispatch)
	return {
		ChangeTool = function(toolMode)
			dispatch(ChangeTool(toolMode))
		end,

		AddUserAddedAssetForPreview = function(tab, asset)
			dispatch(AddUserAddedAssetForPreview(tab, asset))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(SelectItemScreen)