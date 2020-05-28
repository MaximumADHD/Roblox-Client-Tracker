--[[
	This is a simple footer for AssetConfig that can be used to cancel or publish the asset.
	This component should listen to the assetConfig's store for changes. If there is anychange inside
	the whole assetConfig. The save button will become available.

	Necessary Properties:
	Size UDim2, used to set the size for the whole component.
	CanSave, boolean, is the save button active

	TryPublish function, callback when save button is clicked.
	TryCancel function, callback when cancel button is clicked.

	Optional Properties:
	LayoutOrder number, will be checked by the layouter used inside the assetConfigFooter to
	override the Position of the whole component.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local UILibrary = require(Libs.UILibrary)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local ScreenSetup = require(Util.ScreenSetup)

local RoundTextButton = UILibrary.Component.RoundTextButton

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local Requests = Plugin.Core.Networking.Requests
local ToggleOverrideRequest = require(Requests.ToggleOverrideRequest)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LinkButton = require(AssetConfiguration.LinkButton)

local AssetConfigFooter = Roact.PureComponent:extend("AssetConfigFooter")

local FFlagEnableOverrideAssetCursorFix = game:GetFastFlag("EnableOverrideAssetCursorFix")

local BUTTON_HEIGHT = 32
local BUTTON_WIDTH = 120
local LINK_BUTTON_HEIGHT = 20

local PADDING = 24

function AssetConfigFooter:init(props)
	self.onFlowButtonActivated = function()
		props.toggleOverride(self.props.currentTab)
	end
end

function AssetConfigFooter:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props
			local state = self.state

			local size = props.Size
			local layoutOrder = props.LayoutOrder

			local tryPublish = props.TryPublish
			local tryCancel = props.TryCancel

			local footerTheme = theme.footer

			local canSave = props.CanSave
			local screenFlowType = props.screenFlowType
			local assetTypeEnum = props.assetTypeEnum
			local currentTab = props.currentTab

			local showOverride = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_OVERRIDE_BUTTON)
			local overrideText
			if FFlagEnableOverrideAssetCursorFix then
				if ConfigTypes:isOverride(currentTab) then
					overrideText = localizedContent.AssetConfig.Footer.NewAsset
				else
					overrideText = localizedContent.AssetConfig.Footer.Override
				end
			else
				overrideText = localizedContent.AssetConfig.Footer.Override
				if ConfigTypes:isOverride(currentTab) then
					overrideText = localizedContent.AssetConfig.Footer.NewAsset
				end
			end

			return Roact.createElement("Frame", {
				Size = size,

				BackgroundTransparency = 0,
				BackgroundColor3 = footerTheme.backgroundColor,
				BorderSizePixel = 1,
				BorderColor3 = footerTheme.borderColor,

				LayoutOrder = layoutOrder,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 0),
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
					PaddingTop = UDim.new(0, 0),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, PADDING),
				}),

				CancelButton = Roact.createElement(RoundTextButton, {
					Style = theme.cancelButton,
					BorderMatchesBackground = false,
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
					Active = true,
					Name = localizedContent.AssetConfig.Cancel,
					TextSize = Constants.FONT_SIZE_MEDIUM,

					OnClicked = tryCancel,

					LayoutOrder = 2,
				}),

				PublishButton = Roact.createElement(RoundTextButton, {
					Style = theme.defaultButton,
					BorderMatchesBackground = true,
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
					Active = canSave,
					Name = localizedContent.AssetConfig.Apply,
					TextSize = Constants.FONT_SIZE_MEDIUM,

					OnClicked = tryPublish,

					LayoutOrder = 3,
				}),

				ToggleOverrideButton = showOverride and Roact.createElement(LinkButton, {
					Size = UDim2.new(1, - BUTTON_WIDTH  * 2 - PADDING * 2, 0, LINK_BUTTON_HEIGHT),
					Text = overrideText,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Font = Constants.FONT,
					onActivated = self.onFlowButtonActivated,

					LayoutOrder = 1,
				})
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		currentTab = state.currentTab,
		instances = state.instances,
		screenFlowType = state.screenFlowType,
		assetTypeEnum = state.assetTypeEnum,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		-- Toggle from publish to override.
		toggleOverride = function(currentTab)
			dispatch(ToggleOverrideRequest(currentTab))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetConfigFooter)