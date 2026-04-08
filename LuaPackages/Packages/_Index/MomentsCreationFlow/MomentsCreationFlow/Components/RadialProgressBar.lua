local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local Image = Foundation.Image
local View = Foundation.View

local useTokens = Foundation.Hooks.useTokens

local Constants = require(MomentsCreationFlow.Constants)

type Props = {
	progress: React.Binding<number>,
}

local function RadialProgressBar(props: Props)
	local tokens = useTokens()
	local emptyColorStyle = tokens.Color.ActionSubtle.Background
	local filledColorStyle = tokens.Color.ActionSubtle.Foreground

	local TRANSPARENCY_SEQ = NumberSequence.new({
		NumberSequenceKeypoint.new(0, filledColorStyle.Transparency),
		NumberSequenceKeypoint.new(0.4999, filledColorStyle.Transparency),
		NumberSequenceKeypoint.new(0.5, emptyColorStyle.Transparency),
		NumberSequenceKeypoint.new(1, emptyColorStyle.Transparency),
	})

	local COLOR_SEQ = ColorSequence.new({
		ColorSequenceKeypoint.new(0, filledColorStyle.Color3),
		ColorSequenceKeypoint.new(0.4999, filledColorStyle.Color3),
		ColorSequenceKeypoint.new(0.5, emptyColorStyle.Color3),
		ColorSequenceKeypoint.new(1, emptyColorStyle.Color3),
	})

	return React.createElement(View, {
		BackgroundTransparency = 1,
		tag = "anchor-center-center position-center-center size-full",
	}, {
		LeftGradient = React.createElement(View, {
			Size = UDim2.fromScale(0.5, 1),
			tag = "clip",
		}, {
			Image = React.createElement(Image, {
				Image = Constants.RadialFillImage,
				Size = UDim2.fromScale(2, 1),
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
				Image = Constants.RadialFillImage,
				Size = UDim2.fromScale(2, 1),
				Position = UDim2.fromScale(-1, 0),
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
	})
end

return RadialProgressBar
