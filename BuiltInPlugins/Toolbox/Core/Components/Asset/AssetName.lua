--[[
	2 line text label that shows the name of an asset

	Props:
		string assetName
		number LayoutOrder = 0

		callback onMouseEnter()
		callback onMouseLeave()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local getModal = require(Plugin.Core.Consumers.getModal)
local withModal = require(Plugin.Core.Consumers.withModal)
local withTheme = require(Plugin.Core.Consumers.withTheme)

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local AssetName = Roact.PureComponent:extend("AssetName")

function AssetName:init(props)
	self.state = {
		isHovered = false
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.ASSET_NAME)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false
		})
	end
end

function AssetName:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget, modalStatus)
			local props = self.props

			local assetId = props.assetId
			local assetName = props.assetName
			local layoutOrder = props.LayoutOrder or 0

			local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.ASSET_NAME)

			local assetNameTheme = theme.asset.assetName
			local isHovered = self.state.isHovered

			return Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, 0, 0, Constants.ASSET_NAME_HEIGHT),
				Text = assetName,
				TextColor3 = assetNameTheme.textColor,

				Font = Constants.FONT,
				TextSize = Constants.ASSET_NAME_FONT_SIZE,
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
				})
			})
		end)
	end)
end

return AssetName
