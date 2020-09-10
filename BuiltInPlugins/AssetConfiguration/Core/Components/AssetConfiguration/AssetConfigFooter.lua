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
local AssetConfigConstants = require(Util.AssetConfigConstants)

local ContextGetter = require(Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork

local RoundTextButton = UILibrary.Component.RoundTextButton
local RoundTextBox = UILibrary.Component.RoundTextBox

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local Requests = Plugin.Core.Networking.Requests
local ToggleOverrideRequest = require(Requests.ToggleOverrideRequest)
local ValidateAnimationRequest = require(Requests.ValidateAnimationRequest)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LinkButton = require(AssetConfiguration.LinkButton)

local AssetConfigFooter = Roact.PureComponent:extend("AssetConfigFooter")

local FFlagSupportAnimImportByID = game:DefineFastFlag("SupportAnimImportByID", false)
local FFlagEnableOverrideAssetCursorFix = game:GetFastFlag("EnableOverrideAssetCursorFix")

local BUTTON_HEIGHT = 32
local BUTTON_WIDTH = 120
local LINK_BUTTON_HEIGHT = 20
local IMPORT_BOX_WIDTH = 160
local INVALID_ID_SIZE = 96
local MAX_COUNT = 32
local PADDING = 24

function AssetConfigFooter:init(props)
	self.onFlowButtonActivated = function()
		props.toggleOverride(self.props.currentTab)
	end

	self.state = {
		animationId = "",
	}

	self.onAnimationIDChanged = function(id)
		if self.props.validateAnimation then
			self.props.validateAnimation({
				networkInterface = getNetwork(self),
				assetId = id,
			})
		end
		self:setState({
			animationId = id,
		})
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
			local validateAnimationSucceeded = false
			if FFlagSupportAnimImportByID then
				validateAnimationSucceeded = props.validateAnimationSucceeded
			end

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

			local useNewAnimFlow = FFlagSupportAnimImportByID and assetTypeEnum == Enum.AssetType.Animation and ConfigTypes:isOverride(currentTab)
			local isDownloadFlow = useNewAnimFlow and AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW == props.screenFlowType

			local publishActive = canSave
			if isDownloadFlow then
				-- no thumbnail selected, active is based on valid id in text box
				if not canSave then
					publishActive = validateAnimationSucceeded
				-- thumbnail selected but id in box is invalid
				elseif not validateAnimationSucceeded then
					publishActive = false
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

				AnimationIdBox = isDownloadFlow and Roact.createElement("Frame", {
					Size = UDim2.new(0, IMPORT_BOX_WIDTH, 0, BUTTON_HEIGHT),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 3,
				}, {
					TextField = Roact.createElement(RoundTextBox, {
						Active = true,
						ErrorMessage = nil,
						MaxLength = MAX_COUNT,
						Text = props.AssetId or state.animationId,
						PlaceholderText = localizedContent.AssetConfig.Override.AnimationID,
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_LARGE,
						Height = BUTTON_HEIGHT,
						WidthOffset = 0,
						SetText = self.onAnimationIDChanged,
						ShowToolTip = false,
					})
				}),

				InvalidAnimationLabel = isDownloadFlow and not validateAnimationSucceeded and state.animationId ~= "" and Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Text =  localizedContent.AssetConfig.Override.InvalidAnimationID,
					TextColor3 = theme.uploadResult.redText,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Size = UDim2.new(0, INVALID_ID_SIZE, 1, 0),
					TextYAlignment = Enum.TextYAlignment.Center,
					TextXAlignment = Enum.TextXAlignment.Center,
					LayoutOrder = 2
				}),

				CancelButton = Roact.createElement(RoundTextButton, {
					Style = theme.cancelButton,
					BorderMatchesBackground = false,
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
					Active = true,
					Name = localizedContent.AssetConfig.Cancel,
					TextSize = Constants.FONT_SIZE_MEDIUM,

					OnClicked = tryCancel,

					LayoutOrder = 4,
				}),

				PublishButton = Roact.createElement(RoundTextButton, {
					Style = theme.defaultButton,
					BorderMatchesBackground = true,
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
					Active = publishActive,
					Name = localizedContent.AssetConfig.Apply,
					TextSize = Constants.FONT_SIZE_MEDIUM,

					OnClicked = FFlagSupportAnimImportByID and function() tryPublish(self.state.animationId) end or tryPublish,

					LayoutOrder = 5,
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

	local stateToProps = {
		currentTab = state.currentTab,
		instances = state.instances,
		screenFlowType = state.screenFlowType,
		assetTypeEnum = state.assetTypeEnum,
	}

	if FFlagSupportAnimImportByID then
		stateToProps["validateAnimationSucceeded"] = state.validateAnimationSucceeded
	end

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		-- Toggle from publish to override.
		toggleOverride = function(currentTab)
			dispatch(ToggleOverrideRequest(currentTab))
		end,
	}

	if FFlagSupportAnimImportByID then
		dispatchToProps["validateAnimation"] = function(assetId)
			dispatch(ValidateAnimationRequest(assetId))
		end
	end

	return dispatchToProps
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetConfigFooter)