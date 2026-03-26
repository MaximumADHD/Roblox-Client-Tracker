local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local ColorMode = require(Foundation.Enums.ColorMode)
local Flags = require(Foundation.Utility.Flags)
local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)
type ColorMode = ColorMode.ColorMode

--selene: allow(roblox_internal_custom_color)

type Props = {
	isVisible: boolean,
	cornerRadius: UDim,
	offset: number,
	borderWidth: number,
	colorMode: ColorMode.ColorMode,
}

local CursorComponent = React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local tokens = useTokens()
	local colorIndex = if Flags.FoundationSupportPresentationContextInSelectionCursor
		then props.colorMode
		else ColorMode.Color

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
			Color = tokens[colorIndex].Selection.Start.Color3,
			Transparency = tokens[colorIndex].Selection.Start.Transparency,
			Thickness = props.borderWidth,
		}, {}),
	})
end)

return React.memo(CursorComponent)
