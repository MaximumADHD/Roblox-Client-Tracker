--[[
	AssetUploadResult - displays either a success or error message based on the state of the store's uploadSucceeded

	Necessary Props:
		Size UDim2, the size of the window
		onClose callback, called when the user presses the "cancel" button
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryRoundFrame = SharedFlags.getFFlagRemoveUILibraryRoundFrame()

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local UI = Framework.UI
local Button = UI.Button

local Components = Plugin.Src.Components
local AssetThumbnailPreview = require(Components.ConvertToPackageWindow.AssetThumbnailPreview)
local NavButton = if FFlagRemoveUILibraryRoundFrame then nil else require(Components.ConvertToPackageWindow.NavButton)

local TITLE_WIDTH = 400
local TITLE_HEIGHT = 36

local REASON_WIDTH = 400
local REASON_HEIGHT = 72
local REASON_PADDING = 13

local PREVIEW_PADDING = 48
local PREVIEW_SIZE = 150
local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local FOOTER_HEIGHT = 80

local BUTTON_WIDTH = 120
local BUTTON_HEIGHT = 32

local RESULT_Y_POS = 279

local SUCCESS_PADDING = 12
local SUCCESS_HEIGHT = 24

local AssetUploadResult = Roact.PureComponent:extend("AssetUploadResult")

function AssetUploadResult:init(props)
	self.state = {
		isLoading = true
	}
end

function AssetUploadResult:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local assetName = props.assetName

	return Roact.createElement("Frame", {
		BackgroundColor3 = style.uploadResult.background,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Size = props.Size,
	}, {
		ModelPreview = Roact.createElement(AssetThumbnailPreview, {
			title = assetName,
			titleHeight = PREVIEW_TITLE_HEIGHT,
			titlePadding = PREVIEW_TITLE_PADDING,
			Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
			Size = UDim2.new(
				0, PREVIEW_SIZE,
				0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
			),
		}),

		LoadingResultSuccess = props.uploadSucceeded and Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, RESULT_Y_POS),
			Size = UDim2.new(1, 0, 1, -RESULT_Y_POS),
			BackgroundTransparency = 1,
		}, {
			Title = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, -TITLE_WIDTH/2, 0, 0),
				Size = UDim2.new(0, TITLE_WIDTH, 0, TITLE_HEIGHT),
				Text = localization:getText("General", "SuccessfullyConverted"),
				Font = Constants.FONT,
				TextColor3 = style.uploadResult.successText,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),

			Rows = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
				Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, SUCCESS_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				ModerationMessage = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Text = localization:getText("General", "YouMayFindPackagesInToolbox"),
					TextColor3 = style.uploadResult.text,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Size = UDim2.new(1, 0, 0, SUCCESS_HEIGHT),
					TextYAlignment = Enum.TextYAlignment.Center,
					LayoutOrder = 0,
				}),
			})
		}),

		LoadingResultFailure = not props.uploadSucceeded and Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, RESULT_Y_POS),
			Size = UDim2.new(1, 0, 1, -RESULT_Y_POS),
			BackgroundTransparency = 1,
		}, {
			Title = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Position = UDim2.new(0.5, -TITLE_WIDTH/2, 0, 0),
				Size = UDim2.new(0, TITLE_WIDTH, 0, TITLE_HEIGHT),
				Text = localization:getText("General", "ConvertToPackageFailed"),
				TextColor3 = style.uploadResult.text,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),

			Reason = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
				Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
				Text = props.networkError.responseBody,
				TextWrapped = true,
				TextColor3 = style.uploadResult.text,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),
		}),

		Footer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 1, -FOOTER_HEIGHT),
			Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
		}, {
			CloseButton = if FFlagRemoveUILibraryRoundFrame then Roact.createElement(Button, {
				LayoutOrder = 0,
				OnClick = props.onClose,
				Position = UDim2.new(0.5, -BUTTON_WIDTH/2, 0.5, -BUTTON_HEIGHT/2),
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				Style = "Round",
				Text = localization:getText("Action", "Close"),
			}) else Roact.createElement(NavButton, {
				onClick = props.onClose,
				titleText = localization:getText("Action", "Close"),
				LayoutOrder = 0,
				Position = UDim2.new(0.5, -BUTTON_WIDTH/2, 0.5, -BUTTON_HEIGHT/2),
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
			}),
		}),
	})
end

AssetUploadResult = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AssetUploadResult)

local function mapStateToProps(state, props)
	state = state or {}

	return {
		assetId = state.AssetConfigReducer.assetId,
		assetName = state.AssetConfigReducer.assetName,
		uploadSucceeded = state.AssetConfigReducer.uploadSucceeded,
		networkError = state.NetworkReducer.networkError,
		assetConfigData = state.AssetConfigReducer.assetConfigData,
		assetTypeEnum = state.AssetConfigReducer.assetTypeEnum
	}
end

local function mapDispatchToProps(dispatch)
	return {}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetUploadResult)