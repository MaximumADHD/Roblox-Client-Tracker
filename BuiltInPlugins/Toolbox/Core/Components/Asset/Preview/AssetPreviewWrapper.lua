--[[
	This component wraps an AssetPreview for display.

	Props:
		table assetData = A table of asset data, passed from Rodux

		table previewFuncs = A table of functions that can be called from
			the AssetPreview component, provided from Rodux

		function onClose = A callback for when the user clicks outside of the
			preview to close it.
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local PreviewModelGetter = require(Util.PreviewModelGetter)
local ContextHelper = require(Util.ContextHelper)

local withModal = ContextHelper.withModal

local withTheme = ContextHelper.withTheme

local AssetPreview = require(Plugin.Core.Components.Asset.Preview.AssetPreview)

local AssetPreviewWrapper = Roact.PureComponent:extend("AssetPreviewWrapper")

local PADDING = 20

function AssetPreviewWrapper:init(props)
	local assetId = props.assetData.Asset.Id
	local previewModel = PreviewModelGetter(assetId)

	self.state = {
		maxPreviewWidth = 0,
		maxPreviewHeight = 0,
		previewModel = previewModel,
		currentPreview = previewModel,
	}

	self.ClickDetectorRef = Roact.createRef()

	self.onCloseButtonClicked = function()
		local state = self.state

		state.previewModel:Destroy()
		state.currentPreview:Destroy()

		self:setState({
			previewModel = nil,
			currentPreview = nil
		})

		self.props.onClose()
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
		local assetData = props.assetData
		self.props.tryCreateContextMenu(assetData)
	end

	self.tryInsert = function()
		local assetData = props.assetData
		self.props.tryInsert(assetData, false) --Asset was not dragged
	end
end

function AssetPreviewWrapper:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			local props = self.props
			local state = self.state

			local assetData = props.assetData

			local maxPreviewWidth = math.min(state.maxPreviewWidth, Constants.ASSET_PREVIEW_MAX_WIDTH)
			local maxPreviewHeight = state.maxPreviewHeight

			local previewModel = state.previewModel
			local currentPreview = state.currentPreview

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
					canInsertAsset = canInsertAsset,
					tryInsert = self.tryInsert,
					tryCreateContextMenu = self.tryCreateContextMenu,
				})
			})
		end)
	end)
end

return AssetPreviewWrapper