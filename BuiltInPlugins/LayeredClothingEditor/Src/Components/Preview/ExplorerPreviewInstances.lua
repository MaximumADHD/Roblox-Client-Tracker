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

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local FFlagEnablePreviewDockWidget = require(Plugin.Src.Flags.GetFFlagEnablePreviewDockWidget)()

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewUtil = AccessoryAndBodyToolSharedUtil.PreviewUtil
local AvatarUtil = AccessoryAndBodyToolSharedUtil.AvatarUtil
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local PreviewContext = AvatarToolsShared.Contexts.PreviewContext
local AssetServiceWrapper = AvatarToolsShared.Contexts.AssetServiceWrapper
local StudioServiceWrapper = AvatarToolsShared.Contexts.StudioServiceWrapper
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local Typecheck = Util.Typecheck

local Constants = require(Plugin.Src.Util.Constants)

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

	local previewAvatars = PreviewUtil.createPreviewAvatars(selectedAvatarIds, userAddedAssets[avatarTabKey], nil, assetService)
	local storageCopies = PreviewUtil.createPreviewAvatars(selectedAvatarIds, userAddedAssets[avatarTabKey], self.folderRef.current, assetService)
	
	-- this will be first layer on the preview avatar
	local archivable = editingItem.Archivable
	editingItem.Archivable = true
	local clone = editingItem:Clone()
	editingItem.Archivable = archivable

	previewContext:setAvatars(previewAvatars)
	previewContext:setStorageAvatars(storageCopies)
	local allAvatars = previewContext:getAllAvatars()
	PreviewUtil.addPreviewClothingFromInstances(allAvatars, {clone})
	PreviewUtil.addPreviewClothingFromIds(allAvatars, selectedClothingIds, userAddedAssets[clothingTabKey], assetService)

	if not FFlagEnablePreviewDockWidget then
		for _, previewAvatar in ipairs(previewAvatars) do
			AvatarUtil:positionAvatarNextTo(previewAvatar.model, editingItem.Parent, true)
		end
	end
end

local function transformOrDeformPreviewLayers(self, selectionChanged)
	local props = self.props

	local attachmentPoint = props.AttachmentPoint
	local accessoryTypeInfo = props.AccessoryTypeInfo
	local previewContext = props.PreviewContext
	local editingCage = props.EditingCage
	local itemSize = props.ItemSize
	local luaMeshEditingModuleContext = props.LuaMeshEditingModuleContext
	local outerCageContext = luaMeshEditingModuleContext:getOuterCageContext()
	local innerCageContext = luaMeshEditingModuleContext:getInnerCageContext()
	local meshEditingContext = luaMeshEditingModuleContext:getCurrentContext()

	local previewAvatars = previewContext:getAllAvatars()

	local layer
	local editingItem
	if FFlagEnablePreviewDockWidget then
		editingItem = props.EditingItemContext:getItem()
	end
	for _, avatar in ipairs(previewAvatars) do
		layer = 1
		if FFlagEnablePreviewDockWidget then
			if not avatar.model then
				continue
			end
			local child = avatar.model:FindFirstChild(editingItem.Name, true)
			if not child then
				continue
			end
			local wrap = child:FindFirstChildWhichIsA("WrapLayer", true)
			if wrap then
				layer = wrap.Order
			end
		end
		if editingCage == Constants.EDIT_MODE.Mesh then
			avatar:transformLayer(layer, itemSize, attachmentPoint.AttachmentCFrame, attachmentPoint.ItemCFrame, accessoryTypeInfo.Name)
		else
			if game:GetFastFlag("FixDeformerUpdateOnCageEdit") and selectionChanged then
				if outerCageContext then
					avatar:deformLayer(layer, outerCageContext:getVertexData(), Enum.CageType.Outer)
				end
				if innerCageContext then
					avatar:deformLayer(layer, innerCageContext:getVertexData(), Enum.CageType.Inner)
				end
			else
				if meshEditingContext then
					avatar:deformLayer(layer, meshEditingContext:getVertexData(), editingCage)
				end
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

		if game:GetFastFlag("FixDeformerUpdateOnCageEdit") then
			transformOrDeformPreviewLayers(self, selectionChanged)
		else
			transformOrDeformPreviewLayers(self)
		end

		if selectionChanged then
			local props = self.props
			local previewContext = props.PreviewContext
			if FFlagEnablePreviewDockWidget then
				previewContext:updatePreviewModel()
			end
		end

		self.isUpdateInProgress = false
	end)()
end

function ExplorerPreviewInstances:init()
	self.folderRef = Roact.createRef()
	self.isUpdateInProgress = false
end

function ExplorerPreviewInstances:didMount()
	local props = self.props
	local luaMeshEditingModuleContext = self.props.LuaMeshEditingModuleContext
	local outerCageContext = luaMeshEditingModuleContext:getOuterCageContext()
	local innerCageContext = luaMeshEditingModuleContext:getInnerCageContext()

	if outerCageContext then
		self.outerCageDataChanged = outerCageContext:getMeshDataChangedSignal():Connect(function()
			-- force an update
			self:setState({temp = {}})
		end)
	end

	if innerCageContext then
		self.innerCageDataChanged = innerCageContext:getMeshDataChangedSignal():Connect(function()
			-- force an update
			self:setState({temp = {}})
		end)
	end
end

function ExplorerPreviewInstances:getOrCreatePreviewFolder()
	self.previewFolder = ReplicatedStorage:FindFirstChild(Constants.PREVIEW_FOLDER_NAME)
	if not self.previewFolder then
		self.previewFolder = Instance.new("Folder")
		self.previewFolder.Name = Constants.PREVIEW_FOLDER_NAME
		self.previewFolder.Archivable = true
		self.previewFolder.Parent = ReplicatedStorage
	end
end

function ExplorerPreviewInstances:render()
	local props = self.props

	local studioService = props.StudioServiceWrapper:get()
	self:getOrCreatePreviewFolder()
	local userId = studioService:GetUserId()
	return Roact.createElement(Roact.Portal, {
		target = self.previewFolder
	}, {
		[userId] = Roact.createElement("Folder", {
			[Roact.Ref] = self.folderRef,
			Archivable = true,
		})
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

	return {
		AttachmentPoint = selectItem.attachmentPoint,
		AccessoryTypeInfo = selectItem.accessoryTypeInfo,
		ItemSize = selectItem.size,
		SelectedAssets = previewStatus.selectedAssets,
		EditingCage = selectItem.editingCage,
	}
end

ExplorerPreviewInstances = withContext({
	EditingItemContext = EditingItemContext,
	PreviewContext = PreviewContext,
	AssetServiceWrapper = AssetServiceWrapper,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
	StudioServiceWrapper = StudioServiceWrapper,
})(ExplorerPreviewInstances)

return RoactRodux.connect(mapStateToProps)(ExplorerPreviewInstances)
