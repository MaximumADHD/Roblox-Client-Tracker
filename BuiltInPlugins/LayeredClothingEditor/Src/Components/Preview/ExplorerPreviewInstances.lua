--[[
	Add preview avatars to the scene and add preview clothes to the preview avatar or editing avatar

	Optional Props:
		table SelectedAssets: which assets are selected in the grid, which is provided via mapStateToProps.
		table UserAddedAssets: the table of assets added by the user
		table PointData: Rbf point data for the cages being edited, provided via mapStateToProps.
		table AttachmentPoint: CFrame data for item attachment, provided via mapStateToProps.
		Vector3 ItemSize: Size/Scale of the MeshPart for the editingItem.
		table AccessoryTypeInfo: Info about accessory asset type and bounds, provided via mapStateToProps.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		table PreviewContext: A PreviewContext item, which is provided via withContext.
		table AssetServiceWrapper: An AssetServiceWrapper context item, provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewUtil = AccessoryAndBodyToolSharedUtil.PreviewUtil
local AvatarUtil = AccessoryAndBodyToolSharedUtil.AvatarUtil

local EditingItemContext = require(Plugin.Src.Context.EditingItemContext)
local PreviewContext = require(Plugin.Src.Context.PreviewContext)
local AssetServiceWrapper = require(Plugin.Src.Context.AssetServiceWrapper)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local Typecheck = Util.Typecheck

local Constants = require(Plugin.Src.Util.Constants)
local PreviewConstants = require(Plugin.Src.Util.PreviewConstants)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local ExplorerPreviewInstances = Roact.PureComponent:extend("ExplorerPreviewInstances")
Typecheck.wrap(ExplorerPreviewInstances, script)

local function onPreviewSelectionChanged(self)
	local props = self.props
	local selectedAssets = props.SelectedAssets
	local userAddedAssets = props.UserAddedAssets
	local assetService = props.AssetServiceWrapper:get()
	local editingItemContext = props.EditingItemContext
	local editingItem = editingItemContext:getItem()
	local previewContext = props.PreviewContext

	local avatarTabKey = PreviewConstants.TABS_KEYS.Avatars
	local clothingTabKey = PreviewConstants.TABS_KEYS.Clothing

	local selectedAvatarIds = Cryo.Dictionary.keys(selectedAssets[avatarTabKey] or {})
	local selectedClothingIds = Cryo.Dictionary.keys(selectedAssets[clothingTabKey] or {})

	local previewAvatars = PreviewUtil.createPreviewAvatars(selectedAvatarIds, userAddedAssets[avatarTabKey], self.folderRef.current, assetService)

	for _, previewAvatar in ipairs(previewAvatars) do
		AvatarUtil:positionAvatarNextTo(previewAvatar.model, editingItem.Parent, true)
	end

	-- this will be first layer on the preview avatar
	editingItem.Archivable = true
	local clone = editingItem:Clone()
	editingItem.Archivable = false
	PreviewUtil.addPreviewClothingFromInstances(previewAvatars, {clone})

	PreviewUtil.addPreviewClothingFromIds(previewAvatars, selectedClothingIds, userAddedAssets[clothingTabKey], assetService)

	previewContext:setAvatars(previewAvatars)
end

local function transformOrDeformPreviewLayers(self)
	local props = self.props

	local attachmentPoint = props.AttachmentPoint
	local accessoryTypeInfo = props.AccessoryTypeInfo
	local previewContext = props.PreviewContext
	local editingCage = props.EditingCage
	local pointData = props.PointData
	local itemSize = props.ItemSize

	local previewAvatars = previewContext:getAvatars()
	for _, avatar in ipairs(previewAvatars) do
		if editingCage == Constants.EDIT_MODE.Mesh then
			avatar:transformLayer(1, itemSize, attachmentPoint.AttachmentCFrame, attachmentPoint.ItemCFrame, accessoryTypeInfo.Name)
		else
			-- TODO: shouldn't have to do this once we refactor to use the vertex editing module
			if pointData and pointData[editingCage] then
				local verts = {}
				local _, pointTable = next(pointData[editingCage])
				for _, point in ipairs(pointTable) do
					table.insert(verts, point.Position)
				end

				avatar:deformLayer(1, verts, editingCage)
			end
		end
	end
end

local function updatePreviewAssets(self, selectionChanged)
	coroutine.wrap(function()
		while self.isUpdateInProgress do
			wait()
		end

		self.isUpdateInProgress = true

		if selectionChanged then
			onPreviewSelectionChanged(self)
		end

		transformOrDeformPreviewLayers(self)

		self.isUpdateInProgress = false
	end)()
end

function ExplorerPreviewInstances:init()
	self.folderRef = Roact.createRef()
	self.isUpdateInProgress = false
end

function ExplorerPreviewInstances:render()
	return Roact.createElement(Roact.Portal, {
		target = game.Workspace
	}, {
		LayeredClothingEditorPreview = Roact.createElement("Folder", {
			[Roact.Ref] = self.folderRef,
			Archivable = false,
		}),
	})
end

function ExplorerPreviewInstances:didUpdate(prevProps)
	if prevProps.SelectedAssets[PreviewConstants.TABS_KEYS.Avatars] ~= self.props.SelectedAssets[PreviewConstants.TABS_KEYS.Avatars] or
		prevProps.SelectedAssets[PreviewConstants.TABS_KEYS.Clothing] ~= self.props.SelectedAssets[PreviewConstants.TABS_KEYS.Clothing]then
		updatePreviewAssets(self, true)
	else
		updatePreviewAssets(self, false)
	end
end

local function mapStateToProps(state, props)
	local previewStatus = state.previewStatus
	local selectItem = state.selectItem
	local cageData = state.cageData

	return {
		AttachmentPoint = selectItem.attachmentPoint,
		AccessoryTypeInfo = selectItem.accessoryTypeInfo,
		ItemSize = selectItem.size,
		SelectedAssets = previewStatus.selectedAssets,
		EditingCage = selectItem.editingCage,
		PointData = cageData.pointData,
	}
end

ExplorerPreviewInstances = withContext({
	EditingItemContext = EditingItemContext,
	PreviewContext = PreviewContext,
	AssetServiceWrapper = AssetServiceWrapper,
})(ExplorerPreviewInstances)

return RoactRodux.connect(mapStateToProps)(ExplorerPreviewInstances)