local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)

--selene: allow(roblox_internal_custom_color)

type Props = {
	isVisible: boolean,
	cornerRadius: UDim,
	offset: number,
	borderWidth: number,
}

local CursorComponent = React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local tokens = useTokens()

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.fromOffset(-props.offset, -props.offset),
		Size = UDim2.new(1, props.offset * 2, 1, props.offset * 2),
		ref = ref,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = props.cornerRadius,
		}),
		UIStroke = React.createElement("UIStroke", {
			Color = tokens.Color.Selection.Start.Color3,
			Transparency = tokens.Color.Selection.Start.Transparency,
			Thickness = props.borderWidth,
		}, {}),
	})
end)

return React.memo(CursorComponent)
