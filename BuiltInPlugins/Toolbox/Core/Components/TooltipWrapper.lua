--[[
	Wraps a Tooltip so it is displayed when hovered.

	Props:
		string Text
		bool canShowCurrentTooltip
		bool isHovered
]]

local FFlagToolboxAssetGridRefactor4 = game:GetFastFlag("ToolboxAssetGridRefactor4")

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
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
			Priority = (FFlagToolboxAssetGridRefactor4) and 2 or nil,
		})
	})
end

return TooltipWrapper
