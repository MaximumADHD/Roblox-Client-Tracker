local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Flags = require(Foundation.Utility.Flags)

type GradientProps = {
	fillDirection: Enum.FillDirection,
	top: boolean,
}

local function Gradient(props: GradientProps)
	return React.createElement("UIGradient", {
		Rotation = if props.fillDirection == Enum.FillDirection.Vertical then 90 else 0,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, if props.top then 0 else 1),
			NumberSequenceKeypoint.new(
				0.5,
				if Flags.FoundationDialogHeroMediaGradientFix then (if props.top then 0 else 1) else 0
			),
			NumberSequenceKeypoint.new(
				0.50001,
				if Flags.FoundationDialogHeroMediaGradientFix then (if props.top then 1 else 0) else 0
			),
			NumberSequenceKeypoint.new(1, if props.top then 1 else 0),
		}),
	})
end

return Gradient
