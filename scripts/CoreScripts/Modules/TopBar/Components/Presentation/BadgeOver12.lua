local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

type Props = {
	position: UDim2,
}

return function(props: Props)
	local style = useStyle()

	return React.createElement("TextLabel", {
		AnchorPoint = Vector2.new(0, 1),
		Position = props.position,
		Text = "12+",
		Font = AppFonts.default:getMedium(),
		TextSize = 9,
		TextColor3 = style.Theme.TextEmphasis.Color,
		BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
		BackgroundTransparency = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		LineHeight = 1.25,
		ZIndex = 2,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 2),
			PaddingRight = UDim.new(0, 2),
		}),
		Shape = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
	})
end
