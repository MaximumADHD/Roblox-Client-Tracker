local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local TOOLTIP_WIDTH = 300 -- this is arbitrary based on the current needs

export type Props = {
	label: string,
	xOffset: number,
	yOffset: number,
}

local function GlobalNavOptionTooltip(props: Props)
	local style = useStyle()

	return React.createElement(
		"Frame",
		{
			Transparency = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, TOOLTIP_WIDTH, 1, 0),
			AnchorPoint = Vector2.new(0.5, -1),
			Position = UDim2.new(0, props.xOffset, 0, props.yOffset),
		},
		React.createElement(StyledTextLabel, {
			size = UDim2.new(1, 0, 1, 0),
			text = props.label,
			textXAlignment = Enum.TextXAlignment.Center,
			colorStyle = {
				Color = style.Theme.TextDefault.Color,
				Transparency = 0,
			},
			fontStyle = style.Font.Header2,
		})
	)
end

return GlobalNavOptionTooltip
