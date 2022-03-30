--[[
	Screen for selecting AssetType and initial attachment point of the accesory. This screen gets
	skipped if the editing item is an Avatar.

	Required Props:
		callback GoToNext: request to go to next screen in flow.
		callback GoToPrevious: request to go to previous screen in flow.
	Optional Props:
		table AccessoryTypeInfo: asset and attachment names for accessory categories, provided via mapStateToProps.
		callback SetAccessoryTypeInfo: action to set table info for accessory type, provided via mapDispatchToProps.
		callback SetAttachmentPoint: action to set attachment point CFrame and origin, provided via mapDispatchToProps.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		table Localization: A Localization ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)
local Components = AvatarToolsShared.Components
local FlowScreenLayout = Components.FlowScreenLayout

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local AssetTypeAttachmentInfo = AccessoryAndBodyToolSharedUtil.AssetTypeAttachmentInfo

local Pane = Framework.UI.Pane

local SetAccessoryTypeInfo = require(Plugin.Src.Actions.SetAccessoryTypeInfo)
local SetAttachmentPoint = require(Plugin.Src.Actions.SetAttachmentPoint)

local LCERadioButtonList = require(Plugin.Src.Components.LCERadioButtonList)

local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)

local ModelUtil = require(Plugin.Src.Util.ModelUtil)

local Util = Framework.Util
local Typecheck = Util.Typecheck
local LayoutOrderIterator = Util.LayoutOrderIterator

local AssetTypeScreen = Roact.PureComponent:extend("AssetTypeScreen")

local GetFFlagAFTChooseAssetTypeFirst = require(Plugin.Src.Flags.GetFFlagAFTChooseAssetTypeFirst)

Typecheck.wrap(AssetTypeScreen, script)

local function makeButtonList(localization, keys)
	local buttons = {}
	for key in pairs(keys) do
		table.insert(buttons, {
			Key = key,
			Text = localization:getText("AssetType", key),
			Disabled = false,
		})
	end
	return buttons
end

local function hasMultipleAttachments(assetTypeInfo)
	local att = assetTypeInfo.Attachments
	local count = 0
	for _ in pairs(att) do
		count = count + 1
		if count > 1 then
			return true
		end
	end
	return false
end

if GetFFlagAFTChooseAssetTypeFirst() then
	function AssetTypeScreen:initWithPreviousAssetTypeInfo(previousMultiAttachmentAsset)
		local assetType
		local accessoryTypeInfo = self.props.AccessoryTypeInfo
		if previousMultiAttachmentAsset then
			assetType = next(previousMultiAttachmentAsset)
		elseif accessoryTypeInfo then
			assetType = accessoryTypeInfo.AssetType
		else
			return
		end

		local assetTypeAccessoryTable = AssetTypeAttachmentInfo.Accessory[assetType]
		local assetTypeClothingTable = AssetTypeAttachmentInfo.Clothing[assetType]
		if assetTypeAccessoryTable then
			if hasMultipleAttachments(assetTypeAccessoryTable) then
				self.multiAttachmentAsset = {
					[assetType] = assetTypeAccessoryTable
				}
			end
			self.initialSelectedAccessoryType = assetType
		elseif assetTypeClothingTable then
			if hasMultipleAttachments(assetTypeClothingTable) then
				self.multiAttachmentAsset = {
					[assetType] = assetTypeClothingTable
				}
			end
			self.initialSelectedClothingType = assetType
		end

		if accessoryTypeInfo then
			self.initialSelectedSubType = accessoryTypeInfo.AssetSubType
		end
	end
else
	function AssetTypeScreen:initWithPreviousAssetTypeInfo()
		local accessoryTypeInfo = self.props.AccessoryTypeInfo
		if accessoryTypeInfo then
			local assetTypeAccessoryTable = AssetTypeAttachmentInfo.Accessory[accessoryTypeInfo.AssetType]
			local assetTypeClothingTable = AssetTypeAttachmentInfo.Clothing[accessoryTypeInfo.AssetType]
			if assetTypeAccessoryTable then
				if hasMultipleAttachments(assetTypeAccessoryTable) then
					self.multiAttachmentAsset = {
						[accessoryTypeInfo.AssetType] = assetTypeAccessoryTable
					}
				end
				self.initialSelectedAccessoryType = accessoryTypeInfo.AssetType
			elseif assetTypeClothingTable then
				if hasMultipleAttachments(assetTypeClothingTable) then
					self.multiAttachmentAsset = {
						[accessoryTypeInfo.AssetType] = assetTypeClothingTable
					}
				end
				self.initialSelectedClothingType = accessoryTypeInfo.AssetType
			end

			self.initialSelectedSubType = accessoryTypeInfo.AssetSubType
		end
	end
end

function AssetTypeScreen:init()
	self.state = {
		multiAttachmentAsset = nil,
		resetAccessoryList = false,
		resetClothingList = false,
	}

	self.multiAttachmentAsset = nil

	self:initWithPreviousAssetTypeInfo()

	self.onNext = function()
		if self.multiAttachmentAsset then
			self:setState({
				multiAttachmentAsset = Cryo.Dictionary.join(self.multiAttachmentAsset),
			})
			if GetFFlagAFTChooseAssetTypeFirst() and self.props.AccessoryTypeInfo then
				self.multiAttachmentAsset = nil
			end
		else
			self.props.GoToNext()
		end
	end

	self.onBack = function()
		if self.state.multiAttachmentAsset then
			if GetFFlagAFTChooseAssetTypeFirst() then
				self:initWithPreviousAssetTypeInfo(self.state.multiAttachmentAsset)
			end
			self:setState({
				multiAttachmentAsset = Roact.None,
			})
		else
			self.props.GoToPrevious()
		end
	end

	self.onClickAttachment = function(assetTypeName, key, attachment)
		local editingItem = self.props.EditingItemContext:getItem()
		if not editingItem then
			return
		end
		self.multiAttachmentAsset = nil
		self.props.SetAccessoryTypeInfo(Cryo.Dictionary.join(attachment, {
			AssetType = assetTypeName,
			AssetSubType = key,
		}))

		local existingAttachment = ModelUtil:getExistingAttachmentPoint(editingItem, editingItem.Parent, attachment.Name)
		if existingAttachment then
			self.props.SetAttachmentPoint(existingAttachment)
		end
	end

	self.onClickAttachmentSubList = function(assetTypeName, key, assetTypeInfo)
		if assetTypeInfo and key and assetTypeInfo.Attachments[key] then
			self.onClickAttachment(assetTypeName, key, assetTypeInfo.Attachments[key])
		end
	end

	self.onClickAssetType = function(key, assetTypeInfo)
		if assetTypeInfo then
			if not hasMultipleAttachments(assetTypeInfo) then
				local assetSubType, attachment = next(assetTypeInfo.Attachments)
				self.onClickAttachment(key, assetSubType, attachment)
			else
				self.multiAttachmentAsset = {
					[key] = assetTypeInfo,
				}
			end
		end
	end

	self.onClickAccessoryType = function(key)
		self.onClickAssetType(key, AssetTypeAttachmentInfo.Accessory[key])
		self:setState({
			resetClothingList = true,
		})
	end

	self.onClickClothingType = function(key)
		self.onClickAssetType(key, AssetTypeAttachmentInfo.Clothing[key])
		self:setState({
			resetAccessoryList = true,
		})
	end

	self.renderAttachmentSubList = function(order)
		local props = self.props
		local state = self.state

		local localization = props.Localization

		local assetTypeName, info = next(state.multiAttachmentAsset)

		return Roact.createElement(LCERadioButtonList, {
			Title = assetTypeName,
			Buttons = makeButtonList(localization, info.Attachments),
			OnClick = function(selectedKey)
				self.onClickAttachmentSubList(assetTypeName, selectedKey, info)
			end,
			LayoutOrder = order,
			InitialSelectedKey = self.initialSelectedSubType,
		})
	end

	self.renderAssetTypeList = function(order)
		local props = self.props
		local state = self.state

		local accessoryListEnabled = not state.resetAccessoryList
		local clothingListEnabled = not state.resetClothingList

		local theme = props.Stylizer
		local localization = props.Localization

		local orderIterator = LayoutOrderIterator.new()

		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = order,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Spacing = theme.MainPadding,
		}, {
			AccessoryTypeList = accessoryListEnabled and Roact.createElement(LCERadioButtonList, {
				Title = localization:getText("AssetType", "Accessory"),
				Buttons = makeButtonList(localization, AssetTypeAttachmentInfo.Accessory),
				OnClick = self.onClickAccessoryType,
				LayoutOrder = order + orderIterator:getNextOrder(),
				InitialSelectedKey = self.initialSelectedAccessoryType,
			}),

			ClothingTypeList = clothingListEnabled and Roact.createElement(LCERadioButtonList, {
				Title = localization:getText("AssetType", "Clothing"),
				Buttons = makeButtonList(localization, AssetTypeAttachmentInfo.Clothing),
				OnClick = self.onClickClothingType,
				LayoutOrder = order + orderIterator:getNextOrder(),
				InitialSelectedKey = self.initialSelectedClothingType,
			}),
		})
	end
end

function AssetTypeScreen:resetInitialSelectedKeys()
	self.initialSelectedClothingType = nil
	self.initialSelectedAccessoryType = nil
	self.initialSelectedSubType = nil
end

function AssetTypeScreen:didUpdate(prevProps, prevState)
	if self.state.resetClothingList then
		self:resetInitialSelectedKeys()
		self:setState({
			resetClothingList = false,
		})
	end

	if self.state.resetAccessoryList then
		self:resetInitialSelectedKeys()
		self:setState({
			resetAccessoryList = false,
		})
	end
end

function AssetTypeScreen:getContentToRender()
	local state = self.state

	local multiAttachmentAsset = state.multiAttachmentAsset
	if multiAttachmentAsset then
		return self.renderAttachmentSubList
	else
		return self.renderAssetTypeList
	end
end

function AssetTypeScreen:render()
	local props = self.props
	local state = self.state

	local accessoryTypeInfo = props.AccessoryTypeInfo
	local localization = props.Localization
	local renderContent = self:getContentToRender()

	local nextButtonEnabled = true
	if GetFFlagAFTChooseAssetTypeFirst() then
		nextButtonEnabled =
			accessoryTypeInfo ~= nil or
			(self.multiAttachmentAsset ~= nil and state.multiAttachmentAsset == nil) or
			(self.multiAttachmentAsset == nil and state.multiAttachmentAsset ~= nil)
	end

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 1, 0),
		Style = "Box",
	}, {
		Screen = Roact.createElement(FlowScreenLayout, {
			Title = localization:getText("AssetType", "AssetType"),
			PromptText = localization:getText("AssetType", "Prompt"),
			NextButtonText = localization:getText("Flow", "Next"),
			BackButtonText = localization:getText("Flow", "Back"),
			NextButtonEnabled = nextButtonEnabled,
			BackButtonEnabled = true,
			Scrollable = true,
			HasBackButton = true,
			GoToNext = self.onNext,
			GoToPrevious = self.onBack,
			RenderContent = renderContent,
		})
	})
end


AssetTypeScreen = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	EditingItemContext = EditingItemContext,
})(AssetTypeScreen)

local function mapStateToProps(state, props)
	local selectItem = state.selectItem

	return {
		AccessoryTypeInfo = selectItem.accessoryTypeInfo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetAccessoryTypeInfo = function(info)
			dispatch(SetAccessoryTypeInfo(info))
		end,

		SetAttachmentPoint = function(attachmentPoint)
			dispatch(SetAttachmentPoint(attachmentPoint))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetTypeScreen)