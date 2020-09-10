--[[
	AssetUpload - Displays a loading bar before moving onto AssetUploadResult screen

	Necessary Props:
		Size UDim2, the size of the window
		onClose callback, called when the user presses the "cancel" button
]]

local FFlagFixAssetConfigIcon = game:GetFastFlag("FixAssetConfigIcon")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local PreviewTypes = AssetConfigConstants.PreviewTypes
local AssetConfigUtil = require(Util.AssetConfigUtil)

local Actions = Plugin.Core.Actions
local SetCurrentScreen = require(Actions.SetCurrentScreen)

local withTheme = ContextHelper.withTheme

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LoadingBar = require(AssetConfiguration.LoadingBar)
local AssetThumbnailPreview = require(AssetConfiguration.AssetThumbnailPreview)
local ImagePicker = require(AssetConfiguration.ImagePicker)

local PREVIEW_PADDING = 48
local PREVIEW_SIZE = 150
local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local LOADING_BAR_WIDTH = 400
local LOADING_BAR_HEIGHT = 6
local LOADING_BAR_Y_POS = 314

local LOADING_TEXT = "Uploading"
local LOADING_TIME = 0.5
local LOADING_PERCENT = 0.92

local AssetUpload = Roact.PureComponent:extend("AssetUpload")

function AssetUpload:init(props)
	self.state = {
		isLoading = true,
	}
end

function AssetUpload:render()
	return withTheme(function(theme)
		local props = self.props

		local previewType = AssetConfigUtil.getPreviewType(props.assetTypeEnum, props.instances)

		local showViewport = previewType == PreviewTypes.ModelPreview
		local showThumbnail
		if FFlagFixAssetConfigIcon then
			showThumbnail = previewType == PreviewTypes.Thumbnail
				or previewType == PreviewTypes.ImagePicker
		else
			showThumbnail = previewType == PreviewTypes.Thumbnail
		end

		-- Remove when removing FFlagFixAssetConfigIcon
		local showPicker = not FFlagFixAssetConfigIcon
			and previewType == PreviewTypes.ImagePicker

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.typeValidation.background,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = props.Size,
		}, {
			ModelPreview = showViewport and Roact.createElement(AssetThumbnailPreview, {
				title = props.assetName,
				titleHeight = PREVIEW_TITLE_HEIGHT,
				titlePadding = PREVIEW_TITLE_PADDING,
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
				),
			}),

			ThumbnailPreview = showThumbnail and Roact.createElement("ImageLabel", {
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE
				),
				Image = AssetConfigUtil.getResultThumbnail(props.assetId, props.iconFile),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),

			-- Remove when removing FFlagFixAssetConfigIcon
			ImagePicker = showPicker and Roact.createElement(ImagePicker, {
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE
				),
				AssetId = nil,
				ThumbnailStatus = nil,
				ChooseThumbnail = nil, -- Won't get called
				IconFile = props.iconFile,
			}),


			LoadingBar = Roact.createElement(LoadingBar, {
				loadingText = LOADING_TEXT,
				loadingTime = LOADING_TIME,
				holdPercent = LOADING_PERCENT,
				Size = UDim2.new(0, LOADING_BAR_WIDTH, 0, LOADING_BAR_HEIGHT),
				Position = UDim2.new(0.5, -LOADING_BAR_WIDTH/2, 0, LOADING_BAR_Y_POS),
				onFinish = props.uploadSucceeded ~= nil and props.onNext or nil,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local stateToProps = {
		uploadSucceeded = state.uploadSucceeded,
		instances = state.instances,
		assetId = state.assetId,
		assetName = state.changed and state.changed.AssetConfigName or state.assetName,
		screenFlowType = state.screenFlowType,
		assetTypeEnum = state.assetTypeEnum,
		thumbnailStatus = state.thumbnailStatus,
	}

	if FFlagFixAssetConfigIcon then
		stateToProps.iconFile = state.iconFile
	end

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	return {
		onNext = function()
			dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetUpload)