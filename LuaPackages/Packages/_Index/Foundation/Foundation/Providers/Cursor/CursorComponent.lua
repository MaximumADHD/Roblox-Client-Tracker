local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)
local View = require(Foundation.Components.View)
local Flags = require(Foundation.Utility.Flags)

--selene: allow(roblox_internal_custom_color)

type Props = {
	isVisible: boolean,
	cornerRadius: UDim,
	offset: number,
	borderWidth: number,
}

local CursorComponent = React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local tokens = useTokens()

	return React.createElement(if Flags.FoundationRemoveCursorProviderTestOutput then "Frame" else View, {
		BackgroundTransparency = if Flags.FoundationRemoveCursorProviderTestOutput then 1 else nil,
		BorderSizePixel = if Flags.FoundationRemoveCursorProviderTestOutput then 0 else nil,
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
