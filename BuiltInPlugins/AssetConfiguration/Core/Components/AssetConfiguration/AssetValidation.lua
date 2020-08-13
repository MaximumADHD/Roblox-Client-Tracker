--[[
	AssetValidation validates the given asset inside the "instance" prop.
	If pass:
		dispatches SetCurrentScreen to the appropriate next screen
	If fail:
		displays an error message screen

	Necessary Props:
		Size UDim2, the size of the window
		onClose callback, called when the user presses the "cancel" button
]]

local CorePackages = game:GetService("CorePackages")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local UGCValidation = require(CorePackages.UGCValidation)

local withTheme = ContextHelper.withTheme

local Actions = Plugin.Core.Actions
local SetCurrentScreen = require(Actions.SetCurrentScreen)

local Components = Plugin.Core.Components
local LoadingBar = require(Components.AssetConfiguration.LoadingBar)
local AssetThumbnailPreview = require(Components.AssetConfiguration.AssetThumbnailPreview)
local NavButton = require(Components.NavButton)

local FFlagStudioUseNewAnimationImportExportFlow = settings():GetFFlag("StudioUseNewAnimationImportExportFlow")

local TITLE_WIDTH = 400
local TITLE_HEIGHT = 36

local REASON_WIDTH = 400
local REASON_HEIGHT = 72
local REASON_PADDING = 13

local PREVIEW_PADDING = 48
local PREVIEW_SIZE = 150
local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local LOADING_BAR_WIDTH = 400
local LOADING_BAR_HEIGHT = 6
local LOADING_BAR_Y_POS = 314

local LOADING_RESULT_Y_POS = 279

local FOOTER_HEIGHT = 62

local BUTTON_WIDTH = 120
local BUTTON_HEIGHT = 32

local LOADING_TEXT = "Validating"
local LOADING_TIME = 0.5
local LOADING_PERCENT = 0.92

local AssetValidation = Roact.PureComponent:extend("AssetValidation")

function AssetValidation:init(props)
	self.state = {
		failed = false,
		isLoading = true,
	}

	if AssetConfigUtil.isMarketplaceAsset(self.props.assetTypeEnum) or
		self.props.assetTypeEnum == Enum.AssetType.Model or
		(FFlagStudioUseNewAnimationImportExportFlow and self.props.assetTypeEnum == Enum.AssetType.Animation) then
		self.props.nextScreen()
	else
		UGCValidation.validateAsync(self.props.instances, self.props.assetTypeEnum, function(success, reasons)
			if success then
				self:setState({ onFinish = self.props.nextScreen })
			else
				self:setState({
					onFinish = function()
						self:setState({
							isLoading = false,
							reasons = reasons
						})
					end
				})
			end
		end)
	end
end

function AssetValidation:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local reasonText = "Reason:\n" .. table.concat(self.state.reasons or {}, "\n")

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.typeValidation.background,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = props.Size,
		}, {
			Preview = Roact.createElement(AssetThumbnailPreview, {
				titleHeight = PREVIEW_TITLE_HEIGHT,
				titlePadding = PREVIEW_TITLE_PADDING,
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
				),
			}),

			LoadingBar = self.state.isLoading and Roact.createElement(LoadingBar, {
				loadingText = LOADING_TEXT,
				loadingTime = LOADING_TIME,
				holdPercent = LOADING_PERCENT,
				Size = UDim2.new(0, LOADING_BAR_WIDTH, 0, LOADING_BAR_HEIGHT),
				Position = UDim2.new(0.5, -LOADING_BAR_WIDTH/2, 0, LOADING_BAR_Y_POS),
				onFinish = state.onFinish,
			}),

			LoadingResult = not self.state.isLoading and  Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, LOADING_RESULT_Y_POS),
				Size = UDim2.new(1, 0, 1, -LOADING_RESULT_Y_POS),
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Position = UDim2.new(0.5, -TITLE_WIDTH/2, 0, 0),
					Size = UDim2.new(0, TITLE_WIDTH, 0, TITLE_HEIGHT),
					Text = "Validation Failed",
					TextColor3 = theme.loading.text,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),

				Reason = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
					Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
					Text = reasonText,
					TextWrapped = true,
					TextColor3 = theme.loading.text,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Top,
				}),
			}),

			Footer = not self.state.isLoading and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 1, -FOOTER_HEIGHT),
				Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
			}, {
				CloseButton = Roact.createElement(NavButton, {
					onClick = props.onClose,
					titleText = "Close",
					LayoutOrder = 0,
					Position = UDim2.new(0.5, -BUTTON_WIDTH/2, 0.5, -BUTTON_HEIGHT/2),
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				}),
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		instances = state.instances,
		assetTypeEnum = state.assetTypeEnum,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextScreen = function()
			dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.CONFIGURE_ASSET))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetValidation)
