--[[
	Wraps a Tooltip so it is displayed when hovered.

	Props:
		string Text
		bool canShowCurrentTooltip
		bool isHovered
]]

local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Tooltip = require(Libs.Framework).UI.Tooltip

local TooltipWrapper = Roact.PureComponent:extend("TooltipWrapper")

function TooltipWrapper:render()
	local props = self.props

	local text = tostring(props.Text or "")

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
			Priority = (FFlagToolboxAssetGridRefactor) and 2 or nil,
		})
	})
end

return TooltipWrapper
