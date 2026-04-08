local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Cryo = require(Packages.Cryo)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local View = Foundation.View

local getEasingNumberSequence = require(MomentsCommon.Utils.getEasingNumberSequence)

local useMemo = React.useMemo

type Bindable<T> = Foundation.Bindable<T>

export type GradientBackdropProps = {
	anchorPoint: Vector2?,
	color3: Color3,
	endingTransparency: number?,
	position: UDim2?,
	rotation: number,
	size: Bindable<UDim2>,
	startingTransparency: number?,
	zIndex: number?,
}

local DEFAULT_PROPS = {
	anchorPoint = Vector2.new(0, 0),
	endingTransparency = 1,
	position = UDim2.fromScale(0, 0),
	startingTransparency = 0.4,
}

local GradientBackdrop = function(props: GradientBackdropProps)
	local mergedProps = Cryo.Dictionary.union(DEFAULT_PROPS, props)

	local transparencySequence = useMemo(function()
		return NumberSequence.new(
			getEasingNumberSequence(
				mergedProps.startingTransparency,
				mergedProps.endingTransparency,
				15,
				Enum.EasingStyle.Sine,
				Enum.EasingDirection.InOut
			)
		)
	end, { mergedProps.startingTransparency, mergedProps.endingTransparency })

	return React.createElement(View, {
		AnchorPoint = mergedProps.anchorPoint,
		tag = "bg-contrast",
		Position = mergedProps.position,
		Size = mergedProps.size,
		ZIndex = mergedProps.zIndex or 1,
	}, {
		UIGradient = React.createElement("UIGradient", {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, mergedProps.color3),
				ColorSequenceKeypoint.new(1, mergedProps.color3),
			}),
			Rotation = mergedProps.rotation,
			Transparency = transparencySequence,
		}),
	})
end

return GradientBackdrop
