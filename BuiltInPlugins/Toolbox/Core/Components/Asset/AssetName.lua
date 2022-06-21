--[[
	2 line text label that shows the name of an asset

	Props:
		string assetName
		number LayoutOrder = 0
		number NumberRows = 2

		callback onMouseEnter()
		callback onMouseLeave()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local FFlagAssetVoteSimplification = game:GetFastFlag("AssetVoteSimplification")

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local AssetName = Roact.PureComponent:extend("AssetName")

function AssetName:init(props)
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.ASSET_NAME)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end
end

function AssetName:render()
	return withModal(function(modalTarget, modalStatus)
		return self:renderContent(nil, modalTarget, modalStatus)
	end)
end

function AssetName:renderContent(theme, modalTarget, modalStatus)
	local props = self.props
	theme = props.Stylizer

	local assetId = props.assetId
	local assetName = props.assetName
	local layoutOrder = props.LayoutOrder or 0
	local assetNameHeight = Constants.ASSET_NAME_HEIGHT
	if FFlagAssetVoteSimplification and props.NumberRows ~= nil then
		assetNameHeight = Constants.ASSET_NAME_ONE_LINE_HEIGHT * props.NumberRows
	end
	local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.ASSET_NAME)

	local assetNameTheme = theme.asset.assetName
	local isHovered = self.state.isHovered

	return Roact.createElement("TextLabel", {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Size = if FFlagAssetVoteSimplification then UDim2.new(1, 0, 0, assetNameHeight) else UDim2.new(1, 0, 0, Constants.ASSET_NAME_HEIGHT),
		Text = assetName,
		TextColor3 = assetNameTheme.textColor,

		Font = if FFlagAssetVoteSimplification then props.Font else Constants.FONT,
		TextSize = if FFlagAssetVoteSimplification then props.TextSize else Constants.ASSET_NAME_FONT_SIZE,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		ClipsDescendants = true,
		TextTruncate = Enum.TextTruncate.AtEnd,

		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
	}, {
		TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
			Text = assetName,
			canShowCurrentTooltip = canShowCurrentTooltip,
			isHovered = isHovered,
		}),
	})
end

AssetName = withContext({
	Stylizer = ContextServices.Stylizer,
})(AssetName)

return AssetName
