--[[
	Wraps a UILibrary Tooltip so it is displayed when hovered.

	Props:
		string Text
		bool canShowCurrentTooltip
		bool isHovered
]]

local FFlagFixMarketplaceTooltips = game:DefineFastFlag("FixMarketplaceTooltips", false)

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Constants = require(Plugin.Core.Util.Constants)

local Tooltip = require(Libs.UILibrary).Component.Tooltip

local TooltipWrapper = Roact.PureComponent:extend("TooltipWrapper")

function TooltipWrapper:render()
	if not FFlagFixMarketplaceTooltips then
		-- Tooltips were broken previously, so they did not display at all
		return nil
	end

	local props = self.props

	local text = props.Text
	local sizeConstraint = props.SizeConstraint or Enum.SizeConstraint.RelativeXY
	local canShowCurrentTooltip = props.canShowCurrentTooltip
	local isHovered = props.isHovered

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		SizeConstraint = sizeConstraint,
	}, {
		Tooltip = Roact.createElement(Tooltip, {
			Enabled = canShowCurrentTooltip and isHovered,
			Text = text,
			ShowDelay = Constants.TOOLTIP_SHOW_UP_DELAY,
		})
	})
end

return TooltipWrapper
