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

local FFlagCMSUploadFees = game:GetFastFlag("CMSUploadFees")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local ScreenSetup = require(Util.ScreenSetup)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local FrameworkUtil = require(Packages.Framework).Util
local StyleModifier = require(Packages.Framework).Util.StyleModifier

local ContextGetter = require(Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork

local Framework = require(Packages.Framework)
local Button = Framework.UI.Button
local TextInput = Framework.UI.TextInput

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local withLocalization = ContextHelper.withLocalization

local Requests = Plugin.Core.Networking.Requests
local ToggleOverrideRequest = require(Requests.ToggleOverrideRequest)
local ValidateAnimationRequest = require(Requests.ValidateAnimationRequest)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LinkButton = require(AssetConfiguration.LinkButton)

local AssetConfigFooter = Roact.PureComponent:extend("AssetConfigFooter")

local FFlagAssetConfigFixBadIdVerifyState = game:GetFastFlag("AssetConfigFixBadIdVerifyState")

local BUTTON_HEIGHT = FFlagCMSUploadFees and 40 or 32
local BUTTON_WIDTH = 120
local LINK_BUTTON_HEIGHT = 20
local IMPORT_BOX_WIDTH = 160
local INVALID_ID_SIZE = 96
local MAX_COUNT = 32
local PADDING = 24

function AssetConfigFooter:init(props)
	self.hideInvalidAnimationID = true

	self.onFlowButtonActivated = function()
		props.toggleOverride(self.props.currentTab)
	end

	self.state = {
		animationId = "",
	}

	self.onAnimationIDChanged = function(id)
		id = string.gsub(id, "[\n\r]", " ")
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

function AssetConfigFooter:shouldUpdate(nextProps, nextState)
	if nextState ~= self.state then
		return true
	end

	if FFlagAssetConfigFixBadIdVerifyState then
		-- Invalid animation ID visibility updates on prop change only, since state change happens too early for validation to finish
		local oldHideInvalidAnimationID = self.hideInvalidAnimationID
		if nextState.animationId == "" then
			self.hideInvalidAnimationID = true
		else
			self.hideInvalidAnimationID = nextProps.validateAnimationSucceeded or tostring(nextProps.AssetId) == nextState.animationId
		end

		-- In case the prop doesn't change (ie. invalid -> invalid) but we still need to update since empty field shouldn't show invalid
		if oldHideInvalidAnimationID ~= self.hideInvalidAnimationID then
			return true
		end
	end

	if FrameworkUtil.deepEqual(nextProps, self.props) then
		return false
	end

	return true
end

function AssetConfigFooter:render()
	return withLocalization(function(localization, localizedContent)
		return self:renderContent(nil, localization, localizedContent)
	end)
end

function AssetConfigFooter:renderContent(theme, localization, localizedContent)
	local props = self.props
	local state = self.state

	theme = self.props.Stylizer

	local size = props.Size
	local layoutOrder = props.LayoutOrder

	local tryPublish = props.TryPublish
	local tryCancel = props.TryCancel

	local footerTheme = theme.footer

	local canSave = props.CanSave
	local screenFlowType = props.screenFlowType
	local assetTypeEnum = props.assetTypeEnum
	local currentTab = props.currentTab
	local validateAnimationSucceeded = props.validateAnimationSucceeded

	local hideInvalidAnimationID = validateAnimationSucceeded or state.animationId == ""
	if FFlagAssetConfigFixBadIdVerifyState then
		hideInvalidAnimationID = self.hideInvalidAnimationID
	end

	local showOverride = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_OVERRIDE_BUTTON)
	local overrideText
	if ConfigTypes:isOverride(currentTab) then
		overrideText = localizedContent.AssetConfig.Footer.NewAsset
	else
		overrideText = localizedContent.AssetConfig.Footer.Override
	end

	local useNewAnimFlow = assetTypeEnum == Enum.AssetType.Animation and ConfigTypes:isOverride(currentTab)
	local isDownloadFlow = useNewAnimFlow and AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW == props.screenFlowType

	local animationText = props.AssetId or state.animationID
	local animationTextOverMaxCount = false
	local publishActive = canSave
	if isDownloadFlow then
		-- no thumbnail selected, active is based on valid id in text box
		if not canSave then
			publishActive = validateAnimationSucceeded
		-- thumbnail selected but id in box is invalid
		elseif not validateAnimationSucceeded then
			publishActive = false
		end

		if animationText then
			local textLength = utf8.len(animationText)
			animationTextOverMaxCount = textLength > MAX_COUNT
		end
	end

	local publishText = localizedContent.AssetConfig.Apply
	if FFlagCMSUploadFees and screenFlowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW and AssetConfigUtil.isCatalogAsset(assetTypeEnum) then
		if props.isUploadFeeEnabled then
			publishText = localization:getUploadWithFee(props.uploadFee)
			if not props.canAffordUploadFee then
				publishActive = false
			end
		elseif props.isUploadFeeEnabled == nil then
			-- upload fee info hasn't loaded yet (not true/false)
			publishActive = false
		end
	end

	return Roact.createElement("Frame", {
		Size = size,

		BackgroundTransparency = 0,
		BackgroundColor3 = footerTheme.backgroundColor,
		BorderColor3 = footerTheme.borderColor,
		BorderSizePixel = 1,

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
			TextField = Roact.createElement(TextInput, {
				ForceOnTextChange = true,
				OnTextChanged = self.onAnimationIDChanged,
				PlaceholderText = localizedContent.AssetConfig.Override.AnimationID,
				Size = UDim2.new(1, 0, 1, 0),
				Style = animationTextOverMaxCount and "FilledRoundedRedBorder" or "FilledRoundedBorder",
				Text = animationText and tostring(animationText) or nil, -- NOTE: animationText is sometimes a number type, but TextInput expects a string or nil
			}),
		}),

		InvalidAnimationLabel = isDownloadFlow and not hideInvalidAnimationID and Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			Text =  localizedContent.AssetConfig.Override.InvalidAnimationID,
			TextColor3 = theme.redText,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			Size = UDim2.new(0, INVALID_ID_SIZE, 1, 0),
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
			LayoutOrder = 2
		}),

		CancelButton = Roact.createElement(Button, {
			LayoutOrder = 4,
			OnClick = tryCancel,
			Style = "Round",
			Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
			Text = localizedContent.AssetConfig.Cancel,
		}),

		PublishButton = Roact.createElement(Button, {
			LayoutOrder = 5,
			OnClick = function()
				if publishActive then
					tryPublish(self.state.animationId)
				end
			end,
			Style = "RoundPrimary",
			StyleModifier = (not publishActive) and StyleModifier.Disabled or nil,
			Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
			Text = publishText,
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
end

local function mapStateToProps(state, props)
	state = state or {}

	local stateToProps = {
		currentTab = state.currentTab,
		instances = state.instances,
		screenFlowType = state.screenFlowType,
		assetTypeEnum = state.assetTypeEnum,
		isUploadFeeEnabled = state.isUploadFeeEnabled,
		uploadFee = state.uploadFee,
		canAffordUploadFee = state.canAffordUploadFee,
	}

	stateToProps["validateAnimationSucceeded"] = state.validateAnimationSucceeded

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		-- Toggle from publish to override.
		toggleOverride = function(currentTab)
			dispatch(ToggleOverrideRequest(currentTab))
		end,
	}

	dispatchToProps["validateAnimation"] = function(assetId)
		dispatch(ValidateAnimationRequest(assetId))
	end

	return dispatchToProps
end


AssetConfigFooter = withContext({
	Stylizer = ContextServices.Stylizer,
})(AssetConfigFooter)


return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetConfigFooter)
