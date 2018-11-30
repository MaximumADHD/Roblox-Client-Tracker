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

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local AssetCreatorName = Roact.PureComponent:extend("AssetCreatorName")

function AssetCreatorName:init(props)
	self.state = {
		isHovered = false
	}

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

				return Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					LayoutOrder = layoutOrder,
					Size = UDim2.new(1, 0, 0, Constants.ASSET_CREATOR_NAME_HEIGHT),
					Text = creatorNameField,
					TextColor3 = creatorNameTheme.textColor,
					Font = Constants.FONT,
					TextSize = Constants.ASSET_CREATOR_NAME_FONT_SIZE,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Top,
					ClipsDescendants = true,
					TextTruncate = Enum.TextTruncate.AtEnd,

					[Roact.Event.MouseEnter] = self.onMouseEnter,
					[Roact.Event.MouseLeave] = self.onMouseLeave,
				}, {
					TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
						Text = creatorName,
						canShowCurrentTooltip = canShowCurrentTooltip,
						isHovered = isHovered,
					})
				})
			end)
		end)
	end)
end

return AssetCreatorName
