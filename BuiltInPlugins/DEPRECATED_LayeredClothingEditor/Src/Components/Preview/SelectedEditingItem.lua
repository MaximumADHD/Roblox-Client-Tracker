--[[
	Workspace instance of the item being edited. If it's a clothing item/accessory, the item will be
	automatically attached to a default mannequin.

	Optional Props:
		table AccessoryTypeInfo: Accessory type name, attachment point, and bounds
		table AttachmentPoint: table of CFrame's for attachment point and its MeshPart parent.
		Vector3 ItemSize: Size/Scale of the MeshPart for the editingItem.
		enum EditingCage: Cage type identifier, Inner/Outer, provided via mapStateToProps
		table PointData: vertex data of item being edited, provided via mapStateToProps
		callback SelectEditingItem: update store values when editing item is selected, provided via mapDispatchToProps
		callback VerifyBounds: function to determine if item is within chosen accessory bounds.
		table EditingItemContext: context item for the object the user selected to edit, provided via withContext.
]]

local InsertService = game:GetService("InsertService")
local HttpService = game:GetService("HttpService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Workspace = game.Workspace

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local VerifyBounds = require(Plugin.Src.Thunks.VerifyBounds)
local SelectEditingItem = require(Plugin.Src.Thunks.SelectEditingItem)
local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)

local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local Typecheck = Util.Typecheck
local deepCopy = Util.deepCopy

local ModelUtil = require(Plugin.Src.Util.ModelUtil)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)

local SelectedEditingItem = Roact.PureComponent:extend("SelectedEditingItem")
Typecheck.wrap(SelectedEditingItem, script)

local function terminateConnections(self)
	if self.MannequinAncestryChangedHandle then
		self.MannequinAncestryChangedHandle:Disconnect()
		self.MannequinAncestryChangedHandle = nil
	end

	if self.AncestryChangedHandle then
		self.AncestryChangedHandle:Disconnect()
		self.AncestryChangedHandle = nil
	end
end

local function destroyEditingItem(self)
	self.props.EditingItemContext:setEditingItem(nil)

	terminateConnections(self)

	if self.mannequin then
		self.mannequin:Destroy()
		self.mannequin = nil
	end

	if self.editingItem then
		self.editingItem:Destroy()
		self.editingItem = nil
	end
end

local function setupEditingItem(self, regenerated, accessoryTypeChanged)
	if not self.sourceItemWithUniqueDeformerNames then
		return
	end

	self.editingItem = self.sourceItemWithUniqueDeformerNames:Clone()
	self.editingItem.Archivable = true
	self.editingItem.Name = HttpService:GenerateGUID()

	terminateConnections(self)

	local isClothing = ItemCharacteristics.isClothes(self.editingItem)
	if isClothing then
		local useCurrentAttachmentPointInfo = not accessoryTypeChanged and regenerated

		self.mannequin = InsertService:LoadLocalAsset(Constants.MANNEQUIN_PATH)
		self.mannequin.Parent = Workspace

		if regenerated then
			self.editingItem.Size = self.props.ItemSize
		end

		ModelUtil:positionAvatar(self.mannequin, self.editingItem, not regenerated)

		local newAttachmentName = ""
		local attachmentPoint = self.props.AttachmentPoint
		if self.props.AccessoryTypeInfo and attachmentPoint then
			newAttachmentName = self.props.AccessoryTypeInfo.Name

			if game:GetFastFlag("RelativeAccessoryPosition") then
				attachmentPoint = deepCopy(attachmentPoint)
				if self.itemCFrameLocalToAttachmentPoint then
					attachmentPoint.AttachmentCFrame = self.itemCFrameLocalToAttachmentPoint:inverse()
					attachmentPoint.ItemCFrame = self.itemCFrameLocalToAttachmentPoint
					self.itemCFrameLocalToAttachmentPoint = nil
				end

				ModelUtil:createOrReuseAttachmentInstance(
					self.editingItem,
					self.mannequin,
					self.props.AccessoryTypeInfo,
					attachmentPoint)
			else
				useCurrentAttachmentPointInfo = useCurrentAttachmentPointInfo or
					ModelUtil:getExistingAttachmentInstance(self.editingItem, newAttachmentName) ~= nil
				ModelUtil:createOrReuseAttachmentInstance(
					self.editingItem,
					self.mannequin,
					self.props.AccessoryTypeInfo,
					useCurrentAttachmentPointInfo and attachmentPoint or nil)
			end
		end

		if game:GetFastFlag("RelativeAccessoryPosition") then
			ModelUtil:attachClothingItem(self.mannequin, self.editingItem, newAttachmentName, true)
		else
			ModelUtil:attachClothingItem(self.mannequin, self.editingItem, newAttachmentName, useCurrentAttachmentPointInfo)
		end

		self.MannequinAncestryChangedHandle = self.mannequin.AncestryChanged:Connect(self.onEditingItemExternalChange)
	else
		self.editingItem.Parent = Workspace

		ModelUtil:positionAvatar(self.editingItem, self.sourceItemWithUniqueDeformerNames, not regenerated)
	end

	self.AncestryChangedHandle = self.editingItem.AncestryChanged:Connect(self.onEditingItemExternalChange)

	self.props.EditingItemContext:setEditingItem(self.editingItem)

	self.props.VerifyBounds(self.editingItem)

	if not regenerated then
		self.props.SelectEditingItem(self.editingItem)
		spawn(function()
			ModelUtil:focusCameraOnItem(self.editingItem)
		end)
	else
		ModelUtil:createModelInfo(self.editingItem, not isClothing)
	end

	ChangeHistoryService:ResetWaypoints()
end

function SelectedEditingItem:init()
	self.mannequin = nil
	self.editingItem = nil
	self.sourceItemWithUniqueDeformerNames = nil

	self.onEditingItemExternalChange = function()
		destroyEditingItem(self)
		setupEditingItem(self, true, false)
	end

	self.onSourceItemChanged = function(sourceItem)
		destroyEditingItem(self)
		if self.sourceItemWithUniqueDeformerNames then
			self.sourceItemWithUniqueDeformerNames:Destroy()
			self.sourceItemWithUniqueDeformerNames = nil
			self.props.EditingItemContext:setSourceItemWithUniqueDeformerNames(nil)
		end
		if sourceItem then
			self.sourceItemWithUniqueDeformerNames = sourceItem:Clone()
			ModelUtil:makeDeformerNamesUnique(self.sourceItemWithUniqueDeformerNames)
			self.props.EditingItemContext:setSourceItemWithUniqueDeformerNames(self.sourceItemWithUniqueDeformerNames)
		end
		setupEditingItem(self, self.sourceItem == sourceItem, false)
		self.sourceItem = sourceItem
	end
end

-- We are not rendering the mannequin/editing item directly through Roact since we wonly want
-- it to be tied to mounting/unmounting of the component. Render will be responsible for re-triggering
-- deformation updates when pointData prop changes.
function SelectedEditingItem:render()
	local props = self.props

	local pointData = props.PointData
	local editingCage = props.EditingCage

	if not self.editingItem or not ItemCharacteristics.hasAnyCage(self.editingItem) or not next(pointData) then
		return nil
	end

	if editingCage == Constants.EDIT_MODE.Mesh then
		return nil
	end

	if ItemCharacteristics.isClothes(self.editingItem) then
		ModelUtil:deformClothing(self.editingItem, pointData, editingCage)
	else
		ModelUtil:updateWraps(pointData, editingCage)
	end
end

function SelectedEditingItem:didMount()
	local props = self.props
	self.SourceItemChangedHandle = props.EditingItemContext:getSourceItemChangedSignal():Connect(self.onSourceItemChanged)
end

function SelectedEditingItem:didUpdate(prevProps)
	if game:GetFastFlag("RelativeAccessoryPosition") then
		local accessoryTypeInfo = self.props.AccessoryTypeInfo
		if prevProps.AccessoryTypeInfo ~= accessoryTypeInfo and self.mannequin then
			if accessoryTypeInfo then
				local parentAvatar = self.sourceItem and self.sourceItem.Parent
				if parentAvatar and ItemCharacteristics.isAvatar(parentAvatar) then
					self.itemCFrameLocalToAttachmentPoint = ModelUtil:getItemCFrameRelativeToAttachmentPoint(
						accessoryTypeInfo.Name,
						parentAvatar,
						self.sourceItem
					)
				end
			end
			destroyEditingItem(self)
			setupEditingItem(self, true, true)
		end
	else
		if prevProps.AccessoryTypeInfo ~= self.props.AccessoryTypeInfo then
			destroyEditingItem(self)
			setupEditingItem(self, true, true)
		end
	end
end

function SelectedEditingItem:willUnmount()
	destroyEditingItem(self)

	if self.SourceItemChangedHandle then
		self.SourceItemChangedHandle:Disconnect()
		self.SourceItemChangedHandle = nil
	end

	self.sourceItem = nil
	if self.sourceItemWithUniqueDeformerNames then
		self.sourceItemWithUniqueDeformerNames:Destroy()
		self.sourceItemWithUniqueDeformerNames = nil
		self.props.EditingItemContext:setSourceItemWithUniqueDeformerNames(nil)
	end
end

local function mapStateToProps(state, props)
	local selectItem = state.selectItem
	local cageData = state.cageData

	return {
		AccessoryTypeInfo = selectItem.accessoryTypeInfo,
		AttachmentPoint = selectItem.attachmentPoint,
		ItemSize = selectItem.size,
		EditingCage = selectItem.editingCage,
		PointData = cageData.pointData,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SelectEditingItem = function(item)
			dispatch(SelectEditingItem(item))
		end,
		VerifyBounds = function(editingItem)
			dispatch(VerifyBounds(editingItem))
		end,
	}
end

SelectedEditingItem = withContext({
	EditingItemContext = EditingItemContext,
})(SelectedEditingItem)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SelectedEditingItem)
