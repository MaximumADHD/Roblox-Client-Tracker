--[[
	Text label that shows the name of an asset creator

	Props:
		string creatorName = ""
		number LayoutOrder = 0
		boolean clickable = true (if nil)

		callback onMouseEnter()
		callback onMouseLeave()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)

local getNetwork = ContextGetter.getNetwork
local getModal = ContextGetter.getModal
local getSettings = ContextGetter.getSettings
local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Libs.Framework.ContextServices)
local Settings = require(Plugin.Core.ContextServices.Settings)

local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local FFlagStudioToolboxEnabledDevFramework = game:GetFastFlag("StudioToolboxEnabledDevFramework")

local AssetCreatorName = Roact.PureComponent:extend("AssetCreatorName")

function AssetCreatorName:init(props)
	local networkInterface = getNetwork(self)
	local settings
	if not FFlagStudioToolboxEnabledDevFramework then
		settings = getSettings(self)
	end

	self.state = {
		isHovered = false
	}

	self.textButtonRef = Roact.createRef()
	self.underLineWidth = 0

	self.onMouseEnter = function()
		self:setState({
			isHovered = true
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.CREATOR_NAME)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false
		})
	end

	self.onActivated = function()
		local props = self.props
		if props.clickable then
			local options
			options = {
				Creator = props.creatorName,
				AudioSearch = props.audioSearchInfo,
			}
			if FFlagStudioToolboxEnabledDevFramework then
				local mySettings = self.props.Settings:get("Plugin")
				props.searchWithOptions(networkInterface, mySettings, options)
			else
				props.searchWithOptions(networkInterface, settings, options)
			end
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
	return withTheme(function(theme)
		return withModal(function(modalTarget, modalStatus)
			return withLocalization(function(localization, localizedContent)
				local props = self.props

				local creatorNameField = localization:getLocalizedCreatorIntroText(props.creatorName)
				local layoutOrder = props.LayoutOrder or 0

				local assetId = props.assetId
				local creatorName = props.creatorName

				local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.CREATOR_NAME)

				local creatorNameTheme = theme.asset.creatorName

				local isHovered = self.state.isHovered

				return Roact.createElement("TextButton", {
					BackgroundTransparency = 1,
					LayoutOrder = layoutOrder,
					Size = UDim2.new(1, 0, 0, Constants.ASSET_CREATOR_NAME_HEIGHT),
					Text = creatorNameField,
					TextColor3 = creatorNameTheme.textColor,
					Font = Constants.FONT,
					TextSize = Constants.ASSET_CREATOR_NAME_FONT_SIZE,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					ClipsDescendants = false,
					TextTruncate = Enum.TextTruncate.AtEnd,
					AutoButtonColor = false,

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

					UnderLine = isHovered and (nil == props.clickable or props.clickable) and Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 1, 1),
						Size = UDim2.new(0, self.underLineWidth, 0, 1),
						BorderSizePixel = 0,
					})
				})
			end)
		end)
	end)
end

if FFlagStudioToolboxEnabledDevFramework then
	ContextServices.mapToProps(AssetCreatorName, {
		Settings = Settings,
	})
end

local mapStateToProps = function(state, props)
	state = state or {}
	local pageInfo = state.pageInfo or {}
	return {
		audioSearchInfo = pageInfo.audioSearchInfo,
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
