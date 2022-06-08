--[[
	Workspace instance of the item being edited. If it's a clothing item/accessory, the item will be
	automatically attached to a default mannequin.

	Optional Props:
		table AccessoryTypeInfo: Accessory type name, attachment point, and bounds
		table AttachmentPoint: table of CFrame's for attachment point and its MeshPart parent.
		Vector3 ItemSize: Size/Scale of the MeshPart for the editingItem.
		callback SelectEditingItem: update store values when editing item is selected, provided via mapDispatchToProps
		callback VerifyBounds: function to determine if item is within chosen accessory bounds.
		table EditingItemContext: context item for the object the user selected to edit, provided via withContext.
]]

local InsertService = game:GetService("InsertService")
local HttpService = game:GetService("HttpService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Workspace = game.Workspace

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local Mannequin = AccessoryAndBodyToolSharedUtil.Mannequin
local PreviewUtil = AccessoryAndBodyToolSharedUtil.PreviewUtil
local AvatarUtil = AccessoryAndBodyToolSharedUtil.AvatarUtil
local ItemCharacteristics = AccessoryAndBodyToolSharedUtil.ItemCharacteristics
local AccessoryUtil = AccessoryAndBodyToolSharedUtil.AccessoryUtil

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local SetAccessoryTypeInfo = require(Plugin.Src.Actions.SetAccessoryTypeInfo)
local VerifyBounds = require(Plugin.Src.Thunks.VerifyBounds)
local SelectEditingItem = require(Plugin.Src.Thunks.SelectEditingItem)

local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local Typecheck = Util.Typecheck

local SelectedEditingItem = Roact.PureComponent:extend("SelectedEditingItem")
Typecheck.wrap(SelectedEditingItem, script)

local function onMannequinChanged(self, regenerated)
	local props = self.props

	local itemSize = props.ItemSize
	local attachmentPoint = props.AttachmentPoint
	local accessoryTypeInfo = props.AccessoryTypeInfo
	local verifyBounds = props.VerifyBounds
	local editingCage = props.EditingCage
	local editingItemContext = props.EditingItemContext
	local luaMeshEditingModuleContext = props.LuaMeshEditingModuleContext
	local meshEditingContext = luaMeshEditingModuleContext:getCurrentContext()

	local mannequinInstance = self.mannequin.model
	local sourceDisplayItem = self.mannequin.sourceDisplayItem
	local displayItem = self.mannequin.displayItem

	if not ItemCharacteristics.hasAnyCage(displayItem) then
		-- we use studio's undo/redo to handle changes to a rigid accessory. In order
		-- for ChangeHistoryService to track it, it needs to be Archivable.
		mannequinInstance.Archivable = true
		displayItem.Archivable = true
	end

	AvatarUtil:positionAvatarNextTo(mannequinInstance, sourceDisplayItem, true, function()
		local size = if regenerated then itemSize else displayItem.Size

		local attachmentName = if accessoryTypeInfo then accessoryTypeInfo.Name else ""

		local attachmentCFrameLocal = attachmentPoint.AttachmentCFrame
		local itemCFrameLocal = attachmentPoint.ItemCFrame
		if self.itemCFrameLocalToAttachmentPoint then
			attachmentCFrameLocal = self.itemCFrameLocalToAttachmentPoint:inverse()
			itemCFrameLocal = self.itemCFrameLocalToAttachmentPoint
			self.itemCFrameLocalToAttachmentPoint = nil
		end
		self.mannequin:transformLayer(
			1,
			size,
			attachmentCFrameLocal,
			itemCFrameLocal,
			attachmentName)

		if meshEditingContext then
			self.mannequin:deformLayer(1, meshEditingContext:getVertexData(), editingCage)
		end

		self.props.EditingItemContext:setEditingItem(displayItem)

		verifyBounds(displayItem)

		if not regenerated then
			self.props.SelectEditingItem(luaMeshEditingModuleContext, displayItem)
			AvatarUtil:focusCameraOnAvatar(mannequinInstance)
		end

		ChangeHistoryService:ResetWaypoints()
	end)
end

function SelectedEditingItem:init()
	self.mannequin = nil
	self.editingItem = nil
	self.sourceItemWithUniqueDeformerNames = nil

	self.onSourceItemChanged = function(sourceItem)
		if sourceItem ~= self.sourceItem then
			if self.mannequin then
				self.mannequin:destroy()
				self.mannequin = nil
			end
			self.props.EditingItemContext:setSourceItemWithUniqueDeformerNames(nil)
			if sourceItem then
				self.mannequin = Mannequin.new(sourceItem, nil, Workspace, function()
					onMannequinChanged(self, true)
				end)
				self.props.EditingItemContext:setSourceItemWithUniqueDeformerNames(self.mannequin.sourceDisplayItem)
				self.props.SetAccessoryTypeInfo(Cryo.None)
				onMannequinChanged(self, false)
			end
		end
		self.sourceItem = sourceItem
	end
end

-- We are not rendering the mannequin/editing item directly through Roact since we wonly want
-- it to be tied to mounting/unmounting of the component.
function SelectedEditingItem:render()
	return nil
end

function SelectedEditingItem:didMount()
	local props = self.props
	self.SourceItemChangedHandle = props.EditingItemContext:getSourceItemChangedSignal():Connect(self.onSourceItemChanged)
end

function SelectedEditingItem:didUpdate(prevProps)
	local accessoryTypeInfo = self.props.AccessoryTypeInfo
	if accessoryTypeInfo and prevProps.AccessoryTypeInfo ~= accessoryTypeInfo and self.mannequin then
		if accessoryTypeInfo then
			local parentAvatar = self.sourceItem and self.sourceItem.Parent
			if parentAvatar and ItemCharacteristics.isAvatar(parentAvatar) then
				self.itemCFrameLocalToAttachmentPoint = AccessoryUtil:getItemCFrameRelativeToAttachmentPoint(accessoryTypeInfo.Name, parentAvatar, self.sourceItem)
			end
		end
		self.mannequin:reset()
	end
end

function SelectedEditingItem:willUnmount()
	if self.mannequin then
		self.mannequin:destroy()
		self.mannequin = nil
	end

	self.sourceItem = nil
	if self.SourceItemChangedHandle then
		self.SourceItemChangedHandle:Disconnect()
		self.SourceItemChangedHandle = nil
	end
end

local function mapStateToProps(state, props)
	local selectItem = state.selectItem

	return {
		AccessoryTypeInfo = selectItem.accessoryTypeInfo,
		AttachmentPoint = selectItem.attachmentPoint,
		ItemSize = selectItem.size,
		EditingCage = selectItem.editingCage,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetAccessoryTypeInfo = function(info)
			dispatch(SetAccessoryTypeInfo(info))
		end,
		SelectEditingItem = function(context, item)
			dispatch(SelectEditingItem(context, item))
		end,
		VerifyBounds = function(editingItem)
			dispatch(VerifyBounds(editingItem))
		end,
	}
end

SelectedEditingItem = withContext({
	EditingItemContext = EditingItemContext,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
})(SelectedEditingItem)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SelectedEditingItem)
