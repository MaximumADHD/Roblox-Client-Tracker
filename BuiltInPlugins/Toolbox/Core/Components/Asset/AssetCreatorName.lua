--[[
	Text label that shows the name of an asset creator

	Props:
		string creatorName = ""
		number LayoutOrder = 0

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

local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local AssetCreatorName = Roact.PureComponent:extend("AssetCreatorName")

function AssetCreatorName:init(props)
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

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
		local options = {
			Creator = props.creatorName,
		}
		props.searchWithOptions(networkInterface, settings,options)
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
					TextXAlignment = Enum.TextXAlignment.Center,
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

					UnderLine = isHovered and Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 1, 1),
						Size = UDim2.new(0, self.underLineWidth, 0, 1)
					})
				})
			end)
		end)
	end)
end

local function mapDispatchToProps(dispatch)
	return {
		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(AssetCreatorName)
