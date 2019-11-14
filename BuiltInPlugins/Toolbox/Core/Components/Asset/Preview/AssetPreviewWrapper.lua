--[[
	This component wraps an AssetPreview for display.

	Props:
		table assetData = A table of asset data, passed from Rodux

		number assetVersionId = if our asset is a plugin,
		this will be the most updated asset version ID for that plugin

		table previewFuncs = A table of functions that can be called from
			the AssetPreview component, provided from Rodux

		function onClose = A callback for when the user clicks outside of the
			preview to close it.
]]

local FFlagEditAssetForManagedAssets = game:GetFastFlag("EditAssetForManagedAssets")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)

local getUserId = require(Util.getUserId)
local getNetwork = ContextGetter.getNetwork

local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme

local ClearPreview = require(Plugin.Core.Actions.ClearPreview)

local AssetPreview = require(Plugin.Core.Components.Asset.Preview.AssetPreview)

local Requests = Plugin.Core.Networking.Requests
local GetPreviewInstanceRequest = require(Requests.GetPreviewInstanceRequest)
local GetAssetVersionIdRequest = require(Requests.GetAssetVersionIdRequest)
local GetPluginInfoRequest = require(Requests.GetPluginInfoRequest)

local Category = require(Plugin.Core.Types.Category)
local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local AssetPreviewWrapper = Roact.PureComponent:extend("AssetPreviewWrapper")

local FixModelPreviewSelection = settings():GetFFlag("FixModelPreviewSelection")
local FFlagUseDevelopFetchPluginVersionId = game:GetFastFlag("UseDevelopFetchPluginVersionId")

local PADDING = 20

function AssetPreviewWrapper:init(props)
	self.state = {
		maxPreviewWidth = 0,
		maxPreviewHeight = 0,
		currentPreview = nil,
	}

	self.ClickDetectorRef = Roact.createRef()

	self.onCloseButtonClicked = function()
		local state = self.state

		if state.previewModel then
			state.previewModel:Destroy()
		end
		if state.currentPreview then
			state.currentPreview:Destroy()
		end

		self:setState({
			currentPreview = nil
		})

		self.props.onClose()
		self.props.clearPreview()
	end

	self.onDetectorABSSizeChange = function()
		local currentClickDetector = self.ClickDetectorRef.current
		if not currentClickDetector then
			return
		end

		local detectorAbsSize = currentClickDetector.AbsoluteSize
		local detectorWidth = detectorAbsSize.x
		local detectorHeight = detectorAbsSize.y

		self:setState({
			maxPreviewWidth = detectorWidth - 2 * PADDING,
			maxPreviewHeight = detectorHeight - 2 * PADDING,
		})
	end

	self.onTreeItemClicked = function(instance)
		self:setState({
			currentPreview = instance
		})
	end

	self.tryCreateContextMenu = function()
		local assetData = self.props.assetData

		local showEditOption
		if FFlagEditAssetForManagedAssets then
			showEditOption = self.props.canManage
		else
			-- Check if the user owns the asset.
			local creatorData = assetData.Creator
			showEditOption = false
			if creatorData.Type == ConfigTypes.OWNER_TYPES.User then
				if creatorData.Id == getUserId() then
					showEditOption = true
				end
			else
				-- TODO: Check if the user belong to the group owns it.
				-- DEVTOOLS-2872
			end
		end

		self.props.tryCreateContextMenu(assetData, showEditOption)
	end

	self.tryInsert = function()
		local assetData = props.assetData
		return self.props.tryInsert(assetData, false) --Asset was not dragged
	end

	self.takePlugin = function(assetId)
		local networkInterface = getNetwork(self)
		networkInterface:postTakePlugin()
	end
end

function AssetPreviewWrapper:didMount()
	self.props.getPreviewInstance(self.props.assetData.Asset.Id)
	if self.props.assetData.Asset.TypeId == Enum.AssetType.Plugin.Value then
		if FFlagUseDevelopFetchPluginVersionId then
			self.props.getPluginInfo(getNetwork(self), self.props.assetData.Asset.Id)
		else
			self.props.deprecated_getAssetVersionId(getNetwork(self), self.props.assetData.Asset.Id)
		end
	end
end

function AssetPreviewWrapper:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			local props = self.props
			local state = self.state

			local assetData = props.assetData

			-- Remove me with FFlagUseDevelopFetchPluginVersionId
			local assetVersionId = props.assetVersionId
			local previewPluginData = FFlagUseDevelopFetchPluginVersionId and props.previewPluginData

			local maxPreviewWidth = math.min(state.maxPreviewWidth, Constants.ASSET_PREVIEW_MAX_WIDTH)
			local maxPreviewHeight = state.maxPreviewHeight

			local previewModel = props.previewModel
			local currentPreview
			if FixModelPreviewSelection then
				currentPreview = state.currentPreview or previewModel
			else
				currentPreview = previewModel
			end

			local canInsertAsset = props.canInsertAsset

			local popUpTheme = theme.assetPreview.popUpWrapperButton

			return modalTarget and Roact.createElement(Roact.Portal, {
				target = modalTarget
			}, {
				-- This frame should be as big as the screen
				-- So, we will know it's time to close the pop up if there is a click
				-- within the screen
				ScreenClickDetector =  Roact.createElement("TextButton", {
					Size = UDim2.new(1, 0, 1, 0),

					BackgroundTransparency = popUpTheme.detectorBGTrans,
					BackgroundColor3 = popUpTheme.detectorBackground,
					ZIndex = 1,
					AutoButtonColor = false,

					[Roact.Event.Activated] = self.onCloseButtonClicked,
					[Roact.Ref] = self.ClickDetectorRef,
					[Roact.Change.AbsoluteSize] = self.onDetectorABSSizeChange,
				}),

				AssetPreview = Roact.createElement(AssetPreview, {
					position = UDim2.new(0.5, 0, 0.5, 0),
					maxPreviewWidth = maxPreviewWidth,
					maxPreviewHeight = maxPreviewHeight,

					anchorPoint = Vector2.new(0.5, 0.5),

					previewModel = previewModel, -- For treeView
					currentPreview = currentPreview, -- For actual preview
					onTreeItemClicked = self.onTreeItemClicked,

					zIndex = 2,

					assetData = assetData,
					assetVersionId = assetVersionId,
					previewPluginData = previewPluginData,
					canInsertAsset = canInsertAsset,
					tryInsert = self.tryInsert,
					tryCreateContextMenu = self.tryCreateContextMenu,
				})
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}

	local previewModel = assets.previewModel

	local pageInfo = state.pageInfo or {}
	local assetVersionId = assets.assetVersionId

	local assetId = props.assetData.Asset.Id
	local manageableAssets = assets.manageableAssets
	local canManage = manageableAssets[tostring(assetId)]

	return {
		previewModel = previewModel or nil,
		currentTab = pageInfo.currentTab or Category.MARKETPLACE_KEY,
		assetVersionId = assetVersionId,
		canManage = canManage,
		previewPluginData = assets.previewPluginData,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getPreviewInstance = function(assetId)
			dispatch(GetPreviewInstanceRequest(assetId))
		end,

		clearPreview = function()
			dispatch(ClearPreview())
		end,

		deprecated_getAssetVersionId = function(networkInterface, assetId)
			dispatch(GetAssetVersionIdRequest(networkInterface, assetId))
		end,

		getPluginInfo = function(networkInterface, assetId)
			dispatch(GetPluginInfoRequest(networkInterface, assetId))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AssetPreviewWrapper)