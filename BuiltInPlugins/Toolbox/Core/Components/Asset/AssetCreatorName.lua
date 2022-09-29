--[[
	Text label that shows the name of an asset creator

	Props:
		string creatorName = ""
		number LayoutOrder = 0
		boolean clickable = true (if nil)

		callback onMouseEnter()
		callback onMouseLeave()
]]
local FFlagToolboxAddUnverifiedIcon = game:GetFastFlag("ToolboxAddUnverifiedIcon")
local FFlagToolboxAudioSearchOptions2 = game:GetFastFlag("ToolboxAudioSearchOptions2")
local FFlagToolboxAddUnverifiedIconFollowUp = game:GetFastFlag("ToolboxAddUnverifiedIconFollowUp")
	and FFlagToolboxAddUnverifiedIcon

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Framework = require(Packages.Framework)
local Pane = Framework.UI.Pane

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local ToolboxUtilities = require(Util.ToolboxUtilities)

local getNetwork = ContextGetter.getNetwork
local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withLocalization = if FFlagToolboxAddUnverifiedIcon then nil else ContextHelper.withLocalization

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)
local VerifiedCreatorBadge = require(Plugin.Core.Components.Asset.VerifiedCreatorBadge)

local AssetCreatorName = Roact.PureComponent:extend("AssetCreatorName")

function AssetCreatorName:init(props)
	local networkInterface = getNetwork(self)

	self.state = {
		isHovered = false,
	}

	self.textButtonRef = Roact.createRef()
	self.underLineWidth = 0

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.CREATOR_NAME)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end

	self.onActivated = function()
		local props = self.props
		if props.clickable then
			local options
			options = {
				Creator = props.creatorName,
				AudioSearch = props.audioSearchInfo,
				AdditionalAudioSearchInfo = if FFlagToolboxAudioSearchOptions2
					then props.additionalAudioSearchInfo
					else nil,
			}
			local mySettings = self.props.Settings:get("Plugin")
			props.searchWithOptions(networkInterface, mySettings, options)
		end
	end
end

function AssetCreatorName:didMount()
	local textButtonRef = self.textButtonRef.current
	if textButtonRef then
		self.underLineWidth = textButtonRef.TextBounds.X
	end
end

function AssetCreatorName:render()
	return withModal(function(modalTarget, modalStatus)
		if FFlagToolboxAddUnverifiedIcon then
			return self:renderContent(nil, nil, modalTarget, modalStatus)
		else
			return withLocalization(function(localization, localizedContent)
				return self:renderContent(localization, localizedContent, modalTarget, modalStatus)
			end)
		end
	end)
end

-- TODO: Remove localization and localizedContent with FFlagToolboxAddUnverifiedIcon
function AssetCreatorName:renderContent(localization, localizedContent, modalTarget, modalStatus)
	local props = self.props

	local showCreatorBadge -- TODO: remove with FFlagToolboxAddUnverifiedIcon
	local showWarningIcon
	if FFlagToolboxAddUnverifiedIcon then
		showWarningIcon = not props.isVerifiedCreator and not ToolboxUtilities.getShouldHideVerifiedCreatorBadges()
	else
		showCreatorBadge = props.isVerifiedCreator and not ToolboxUtilities.getShouldHideVerifiedCreatorBadges()
	end

	local theme = props.Stylizer

	local creatorNameField
	local layoutOrder = props.LayoutOrder or 0

	if FFlagToolboxAddUnverifiedIcon or showCreatorBadge then
		creatorNameField = props.creatorName
	else
		creatorNameField = localization:getLocalizedCreatorIntroText(props.creatorName)
	end

	local assetId = props.assetId
	local creatorName = props.creatorName

	local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.CREATOR_NAME)

	local creatorNameTheme = theme.asset.creatorName

	local isHovered = self.state.isHovered
	local maxTextWidth = 60

	if FFlagToolboxAddUnverifiedIcon then
		return Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, Constants.ASSET_CREATOR_NAME_HEIGHT),
		}, {
			Text = Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				ClipsDescendants = false,
				LayoutOrder = 1,
				Font = Constants.FONT,
				Size = UDim2.new(0, maxTextWidth, 1, 0),
				TextSize = Constants.ASSET_CREATOR_NAME_FONT_SIZE,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Text = creatorNameField,
				TextColor3 = creatorNameTheme.textColor,

				[Roact.Event.MouseEnter] = self.onMouseEnter,
				[Roact.Event.MouseLeave] = self.onMouseLeave,
				[Roact.Event.Activated] = self.onActivated,
				[Roact.Ref] = self.textButtonRef,
			}, {
				TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
					Text = creatorName,
					canShowCurrentTooltip = canShowCurrentTooltip,
					isHovered = isHovered,
				}),

				UnderLine = isHovered
					and (nil == props.clickable or props.clickable)
					and Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 1, 1),
						Size = UDim2.new(0, self.underLineWidth, 0, 1),
						BorderSizePixel = 0,
					}),
			}),

			CreatorBadge = showWarningIcon and Roact.createElement(VerifiedCreatorBadge, {
				LayoutOrder = 2,
				small = if FFlagToolboxAddUnverifiedIconFollowUp then nil else true,
			}),
		})
	else
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, Constants.ASSET_CREATOR_NAME_HEIGHT),
		}, {
			Text = Roact.createElement("TextButton", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, maxTextWidth, 1, 0),
				Text = creatorNameField,
				TextColor3 = creatorNameTheme.textColor,
				Font = Constants.FONT,
				TextSize = Constants.ASSET_CREATOR_NAME_FONT_SIZE,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				ClipsDescendants = false,
				TextTruncate = Enum.TextTruncate.AtEnd,
				AutoButtonColor = false,

				Position = showCreatorBadge and UDim2.new(0, 16, 0, 0) or nil,

				[Roact.Event.MouseEnter] = self.onMouseEnter,
				[Roact.Event.MouseLeave] = self.onMouseLeave,
				[Roact.Event.Activated] = self.onActivated,
				[Roact.Ref] = self.textButtonRef,
			}, {
				TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
					Text = creatorName,
					canShowCurrentTooltip = canShowCurrentTooltip,
					isHovered = isHovered,
				}),

				UnderLine = isHovered
					and (nil == props.clickable or props.clickable)
					and Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 1, 1),
						Size = UDim2.new(0, self.underLineWidth, 0, 1),
						BorderSizePixel = 0,
					}),
			}),

			CreatorBadge = showCreatorBadge and Roact.createElement(VerifiedCreatorBadge, {
				small = true,
				Position = UDim2.new(0, 0, 0, 1),
			}),
		})
	end
end

AssetCreatorName = withContext({
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(AssetCreatorName)

local mapStateToProps = function(state, props)
	state = state or {}
	local pageInfo = state.pageInfo or {}
	return {
		audioSearchInfo = pageInfo.audioSearchInfo,
		additionalAudioSearchInfo = if FFlagToolboxAudioSearchOptions2 then pageInfo.additionalAudioSearchInfo else nil,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetCreatorName)
