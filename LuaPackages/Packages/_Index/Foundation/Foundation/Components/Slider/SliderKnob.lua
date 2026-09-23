local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
local withCommonProps = require(Foundation.Utility.withCommonProps)

local Knob = require(Foundation.Components.Knob)
local View = require(Foundation.Components.View)

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local calculateSliderFraction = require(script.Parent.calculateSliderFraction)
local getGuiInputPosition = require(script.Parent.getGuiInputPosition)

local IS_INVERSE = { colorNamespace = ColorNamespace.Inverse }

export type KnobAppearance = {
	size: InputSize,
	style: ColorStyleValue,
	stroke: Types.Stroke?,
	hasShadow: boolean?,
}

export type SliderKnobProps = {
	trackRef: { current: GuiObject? },
	fraction: React.Binding<number>,
	isVertical: boolean,
	isDisabled: boolean,
	knobAppearance: KnobAppearance,
	knob: React.ReactElement?,
	isContained: boolean?,
	onSeek: (fraction: number) -> (),
	getBounds: () -> (number, number),
	testId: string,

	onDragStarted: (() -> ())?,
	onDragEnded: (() -> ())?,
} & Types.CommonProps

local function SliderKnob(props: SliderKnobProps)
	local lastAcceptedFractionRef = React.useRef(props.fraction:getValue())

	local onDragStart = React.useCallback(function()
		lastAcceptedFractionRef.current = props.fraction:getValue()
		if props.onDragStarted then
			props.onDragStarted()
		end
	end, { props.fraction, props.onDragStarted } :: { unknown })

	local onDrag = React.useCallback(function(_rbx: UIDragDetector, position: Vector2)
		local track = props.trackRef.current
		if not track then
			return
		end
		local fraction = calculateSliderFraction(getGuiInputPosition(position, track), track, props.isVertical)
		local minBound, maxBound = props.getBounds()
		local acceptedFraction = math.clamp(fraction, minBound, maxBound)
		if acceptedFraction ~= lastAcceptedFractionRef.current then
			lastAcceptedFractionRef.current = acceptedFraction
			props.onSeek(acceptedFraction)
		end
	end, { props.trackRef, props.isVertical, props.getBounds, props.onSeek } :: { unknown })

	local onDragEnd = React.useCallback(function()
		if props.onDragEnded then
			props.onDragEnded()
		end
	end, { props.onDragEnded })

	local position = props.fraction:map(function(fraction: number)
		return if props.isVertical then UDim2.fromScale(0.5, 1 - fraction) else UDim2.fromScale(fraction, 0.5)
	end)
	local anchorPoint = if props.isContained
		then props.fraction:map(function(fraction: number)
			return if props.isVertical then Vector2.new(0.5, 1 - fraction) else Vector2.new(fraction, 0.5)
		end)
		else Vector2.new(0.5, 0.5)

	local knobElement = React.createElement(Knob, {
		size = props.knobAppearance.size,
		style = props.knobAppearance.style,
		stroke = props.knobAppearance.stroke,
		hasShadow = props.knobAppearance.hasShadow,
		testId = `{props.testId}--knob`,
	})

	local commonProps: Types.CommonProps = {
		AnchorPoint = props.AnchorPoint or anchorPoint,
		Position = props.Position or position,
		ZIndex = props.ZIndex or 2,
		Visible = props.Visible,
		LayoutOrder = props.LayoutOrder,
		onAbsoluteSizeChanged = props.onAbsoluteSizeChanged,
		onAbsolutePositionChanged = props.onAbsolutePositionChanged,
		testId = props.testId,
	}

	return React.createElement(
		View,
		withCommonProps(commonProps, {
			tag = "size-0-0 auto-xy",
		}),
		{
			DragTarget = React.createElement(View, {
				tag = "size-full",
				ZIndex = 2,
				testId = `{props.testId}--drag-target`,
			}, {
				DragDetector = React.createElement("UIDragDetector", {
					DragStyle = Enum.UIDragDetectorDragStyle.Scriptable,
					[React.Event.DragStart] = onDragStart :: any,
					[React.Event.DragContinue] = onDrag :: any,
					[React.Event.DragEnd] = onDragEnd :: any,
					Enabled = not props.isDisabled,
				}),
			}),
			Knob = if props.knob
				then React.createElement(View, {
					tag = "size-0-0 auto-xy",
					testId = `{props.testId}--custom-knob`,
				}, props.knob)
				else React.createElement(
					PresentationContext.Provider,
					{ value = IS_INVERSE },
					{ Knob = knobElement }
				),
		}
	)
end

return SliderKnob
