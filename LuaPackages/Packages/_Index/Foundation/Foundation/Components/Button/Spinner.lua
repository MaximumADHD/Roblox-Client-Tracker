local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Motion = require(Packages.Motion)
local useMotion = Motion.useMotion
local usePresence = Motion.usePresence

local useSpinnerMotionStates = require(script.Parent.useSpinnerMotionStates)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local useRotation = require(Foundation.Utility.useRotation)
local withDefaults = require(Foundation.Utility.withDefaults)

type IconSpinnerProps = {
	style: Types.ColorStyle,
	scale: React.Binding<number>,
}

local function IconSpinner(props: IconSpinnerProps)
	local rotation = useRotation(2)

	return React.createElement(Image, {
		Image = "icons/status/loading_large",
		imageStyle = props.style,
		Rotation = rotation,
		tag = "anchor-center-center position-center-center size-full-full",
	}, {
		UIScale = React.createElement("UIScale", {
			Scale = props.scale,
		}),
	})
end

--[[
-- Right, Top, Left, Bottom
local SPINNER_CONTROL_POINTS = {
	Path2DControlPoint.new(UDim2.fromScale(1, 0.5), UDim2.fromScale(0, 0.25), UDim2.fromScale(0, -0.25)),
	Path2DControlPoint.new(UDim2.fromScale(0.5, 0), UDim2.fromScale(0.25, 0), UDim2.fromScale(-0.25, 0)),
	Path2DControlPoint.new(UDim2.fromScale(0, 0.5), UDim2.fromScale(0, -0.33), UDim2.fromScale(0, 0.33)),
	Path2DControlPoint.new(UDim2.fromScale(0.5, 1), UDim2.fromScale(-0.25, 0), UDim2.fromScale(0.25, 0)),
}

type Path2DSpinnerProps = {
	color: Color3?,
	transparency: React.Binding<number>,
	scale: number,
}

local function Path2DSpinner(props: Path2DSpinnerProps)
	local pathRef = React.useRef(nil :: Path2D?)
	local rotation = useRotation(2)

	React.useEffect(function()
		local path = pathRef.current
		path:SetControlPoints(SPINNER_CONTROL_POINTS)
	end, {})

	return React.createElement(View, {
		tag = "anchor-center-center size-full",
		Rotation = rotation,
	}, {
		Circle = React.createElement("Path2D", {
			ref = pathRef,
			Closed = false,
			Color3 = props.color,
			Transparency = props.transparency,
			Thickness = 3,
		}),
		UIScale = React.createElement("UIScale", {
			Scale = props.scale,
		}),
	})
end
]]

type SpinnerProps = {
	style: Types.ColorStyle,
	Size: UDim2,
}

local defaultProps = {
	style = {},
}

local function Spinner(spinnerProps: SpinnerProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(spinnerProps, defaultProps)

	local spinnerMotionStates = useSpinnerMotionStates()
	local values, animate = useMotion(spinnerMotionStates.Default)
	local presence = usePresence()

	React.useEffect(function()
		if presence.isPresent then
			animate(spinnerMotionStates.Loading)
		else
			animate(spinnerMotionStates.Default, {
				onAnimationComplete = presence.onExitComplete,
			})
		end
	end, { presence.isPresent })

	return React.createElement(View, {
		tag = "position-center-center anchor-center-center",
		Size = props.Size,
		ref = ref,
	}, {
		Spinner = React.createElement(IconSpinner, {
			scale = values.scale,
			style = React.joinBindings({
				style = props.style,
				transparency = values.transparency,
			}):map(function(styleValues)
				return {
					Color3 = styleValues.style.Color3,
					Transparency = styleValues.style.Transparency :: number + (styleValues.transparency :: number) / 2,
				}
			end),
		}),
	})
end

return React.memo(React.forwardRef(Spinner))
