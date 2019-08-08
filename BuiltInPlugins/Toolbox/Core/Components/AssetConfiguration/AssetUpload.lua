--[[
	AssetUpload - Displays a loading bar before moving onto AssetUploadResult screen

	Necessary Props:
		Size UDim2, the size of the window
		onClose callback, called when the user presses the "cancel" button
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local Urls = require(Util.Urls)
local Constants = require(Util.Constants)

local Actions = Plugin.Core.Actions
local SetCurrentScreen = require(Actions.SetCurrentScreen)

local withTheme = ContextHelper.withTheme

local Components = Plugin.Core.Components
local LoadingBar = require(Components.AssetConfiguration.LoadingBar)
local AssetThumbnailPreview = require(Components.AssetConfiguration.AssetThumbnailPreview)

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

		local isUploadFlow = props.screenFlowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW
		local thumbnailUrl = Urls.constructAssetThumbnailUrl(
			props.assetId,
			Constants.THUMBNAIL_SIZE_LARGE,
			Constants.THUMBNAIL_SIZE_LARGE
		)

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.typeValidation.background,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = props.Size,
		}, {
			ModelPreview = isUploadFlow and Roact.createElement(AssetThumbnailPreview, {
				titleHeight = PREVIEW_TITLE_HEIGHT,
				titlePadding = PREVIEW_TITLE_PADDING,
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
				),
			}),

			ThumbnailPreview = (not isUploadFlow) and Roact.createElement("ImageLabel", {
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE
				),
				Image = thumbnailUrl,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
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

	return {
		uploadSucceeded = state.uploadSucceeded,
		instances = state.instances,
		assetId = state.assetId,
		screenFlowType = state.screenFlowType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onNext = function()
			dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetUpload)