local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)

type CircularProgressBarProps = {
	-- Progress is expected to be a value from 0 to 1
	progress: React.Binding<number>,
} & Types.CommonProps

local function CircularProgressBar(props: CircularProgressBarProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local TRANSPARENCY_SEQ = NumberSequence.new({
		NumberSequenceKeypoint.new(0, tokens.Color.Content.Emphasis.Transparency),
		NumberSequenceKeypoint.new(0.4999, tokens.Color.Content.Emphasis.Transparency),
		NumberSequenceKeypoint.new(0.5, tokens.Color.Content.Muted.Transparency),
		NumberSequenceKeypoint.new(1, tokens.Color.Content.Muted.Transparency),
	})

	local COLOR_SEQ = ColorSequence.new({
		ColorSequenceKeypoint.new(0, tokens.Color.Content.Emphasis.Color3),
		ColorSequenceKeypoint.new(0.4999, tokens.Color.Content.Emphasis.Color3),
		ColorSequenceKeypoint.new(0.5, tokens.Color.Content.Muted.Color3),
		ColorSequenceKeypoint.new(1, tokens.Color.Content.Muted.Color3),
	})

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "size-full-full",
		}),
		{
			LeftGradient = React.createElement(View, {
				Size = UDim2.fromScale(0.5, 1),
				tag = "position-top-left clip",
			}, {
				Image = React.createElement(Image, {
					Image = "rbxasset://textures/ui/Controls/RadialFill.png",
					Size = UDim2.fromScale(2, 1),
					tag = "content-emphasis position-top-left",
				}, {
					Gradient = React.createElement("UIGradient", {
						Transparency = TRANSPARENCY_SEQ,
						Color = COLOR_SEQ,
						Rotation = props.progress:map(function(progress: number)
							return math.clamp(progress * 360, 180, 360)
						end),
					}),
				}),
			}),
			RightGradient = React.createElement(View, {
				Size = UDim2.fromScale(0.5, 1),
				tag = "clip position-top-center",
			}, {
				Image = React.createElement(Image, {
					Image = "rbxasset://textures/ui/Controls/RadialFill.png",
					Size = UDim2.fromScale(2, 1),
					Position = UDim2.fromScale(-1, 0),
					tag = "content-emphasis",
				}, {
					Gradient = React.createElement("UIGradient", {
						Transparency = TRANSPARENCY_SEQ,
						Color = COLOR_SEQ,
						Rotation = props.progress:map(function(progress: number)
							return math.clamp(progress * 360, 0, 180)
						end),
					}),
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(CircularProgressBar))
