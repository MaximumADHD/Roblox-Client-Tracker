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
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local Mannequin = AccessoryAndBodyToolSharedUtil.Mannequin
local PreviewUtil = AccessoryAndBodyToolSharedUtil.PreviewUtil
local AvatarUtil = AccessoryAndBodyToolSharedUtil.AvatarUtil

local VerifyBounds = require(Plugin.Src.Thunks.VerifyBounds)
local SelectEditingItem = require(Plugin.Src.Thunks.SelectEditingItem)
local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)

local Constants = require(Plugin.Src.Util.Constants)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local Typecheck = Util.Typecheck

local ModelUtil = require(Plugin.Src.Util.ModelUtil)

local SelectedEditingItem = Roact.PureComponent:extend("SelectedEditingItem")
Typecheck.wrap(SelectedEditingItem, script)

local function onMannequinChanged(self, regenerated)
	local props = self.props

	local itemSize = props.ItemSize
	local attachmentPoint = props.AttachmentPoint
	local accessoryTypeInfo = props.AccessoryTypeInfo
	local verifyBounds = props.VerifyBounds
	local pointData = props.PointData
	local editingCage = props.EditingCage
	local editingItemContext = props.EditingItemContext

	local mannequinInstance = self.mannequin.model
	local sourceDisplayItem = self.mannequin.sourceDisplayItem
	local displayItem = self.mannequin.displayItem
	AvatarUtil:positionAvatarNextTo(mannequinInstance, sourceDisplayItem, true)

	local size = if regenerated then itemSize else displayItem.Size

	local attachmentName = if accessoryTypeInfo then accessoryTypeInfo.Name else ""
	self.mannequin:transformLayer(
		1,
		size,
		attachmentPoint.AttachmentCFrame,
		attachmentPoint.ItemCFrame,
		attachmentName)

	-- TODO: shouldn't have to do this once we refactor to use the vertex editing module
	if pointData and pointData[editingCage] then
		local verts = {}
		local _, pointTable = next(pointData[editingCage])
		for _, point in ipairs(pointTable) do
			table.insert(verts, point.Position)
		end

		self.mannequin:deformLayer(1, verts, editingCage)
	end

	self.props.EditingItemContext:setEditingItem(displayItem)

	verifyBounds(displayItem)

	if not regenerated then
		self.props.SelectEditingItem(displayItem)
		spawn(function()
			ModelUtil:focusCameraOnItem(displayItem)
		end)
	else
		ModelUtil:createModelInfo(displayItem, false)
	end

	ChangeHistoryService:ResetWaypoints()
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
	if prevProps.AccessoryTypeInfo ~= self.props.AccessoryTypeInfo and self.mannequin then
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
