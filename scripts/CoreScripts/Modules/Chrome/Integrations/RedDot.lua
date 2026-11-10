local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ChromeShared = script.Parent.Parent.ChromeShared
local GetStyleTokens = require(ChromeShared.Utility.GetStyleTokens)

local RED_DOT_COLOR = Color3.new(0.918, 0.2, 0.137)

type Props = {
	position: UDim2,
	visible: boolean,
	name: string?,
}

return function(props: Props)
	-- Resolved at render time (GetStyleTokens needs UIBlox.init, which hasn't run when this module is
	-- required) and memoized, since the tokens don't change over the dot's lifetime.
	local dotSize = React.useMemo(function()
		return GetStyleTokens().Size.Size_100
	end, {})
	return React.createElement("Frame", {
		Name = props.name or "RedDot",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = props.position,
		Size = UDim2.fromOffset(dotSize, dotSize),
		BackgroundColor3 = RED_DOT_COLOR,
		Visible = props.visible,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
	})
end
