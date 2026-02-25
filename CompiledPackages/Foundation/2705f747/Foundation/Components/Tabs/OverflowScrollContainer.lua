local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local Flags = require(Foundation.Utility.Flags)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local ScrollView = require(Foundation.Components.ScrollView)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Visibility = require(Foundation.Enums.Visibility)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type InputSize = InputSize.InputSize

local START_GRADIENT = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.8, 0),
	NumberSequenceKeypoint.new(1, 1),
})

local END_GRADIENT = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.2, 0),
	NumberSequenceKeypoint.new(1, 0),
})
local SCROLL_STEP = 90

local function OverflowButton(
	props: {
		size: InputSize,
		gradient: NumberSequence,
		onActivated: () -> (),
		tag: string,
		-- Should be kebab case inferred from BuilderIcons.Icon
		icon: string,
	} & Types.CommonProps
)
	return React.createElement(
		View,
		withCommonProps(props, {
			tag = `bg-surface-0 size-0-full auto-x col align-y-center {props.tag}`,
		}),
		{
			UIGradient = React.createElement("UIGradient", {
				Transparency = props.gradient,
			}),
			Button = React.createElement(IconButton, {
				onActivated = props.onActivated,
				size = if props.size == InputSize.Large or props.size == InputSize.Medium
					then InputSize.Small
					else InputSize.XSmall,
				icon = {
					name = props.icon,
				},
			}),
		}
	)
end

type OverflowScrollContainerProps = {
	size: InputSize,
	children: React.ReactNode,
} & Types.CommonProps

local function OverflowScrollContainer(props: OverflowScrollContainerProps)
	local isEndOverflowVisible, setIsEndOverflowVisible = React.useBinding(false)
	local isStartVisible, setIsStartVisible = React.useBinding(false)
	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)
	local setGoal = ReactOtter.useMotor(0, function(value)
		local scrollingFrame = scrollingFrameRef.current
		if not scrollingFrame then
			return
		end
		scrollingFrame.CanvasPosition = Vector2.new(value, 0)
	end)

	local updateVisibility = React.useCallback(
		Dash.throttle(function(el: ScrollingFrame)
			if el.AbsoluteWindowSize.X == 0 then
				return
			end
			-- When updateVisibility is called on the onAbsoluteWindowSizeChanged the AbsoluteCanvasSize is always 1px bigger, I guess it's updated to be the same on the next render.
			-- onAbsoluteWindowSizeChanged is used because the component can shrink below minimum CanvasSize.
			-- e.g. 1. Shrink component 2. EndOverflow appears 3. Click it. 4. Start overflow appears, end dissappears. 5. Shrink component a bit more. 6. EndOverflow should appear, but the CanvasSize stays the same, only the WindowSize changes.
			setIsEndOverflowVisible((el.AbsoluteWindowSize.X + el.CanvasPosition.X) < (el.AbsoluteCanvasSize.X - 1))
			setIsStartVisible(el.CanvasPosition.X ~= 0)
		end, 0.2),
		{}
	)

	local moveScrollByPixels = React.useCallback(function(pixels: number)
		local scrollingFrame = scrollingFrameRef.current
		if not scrollingFrame then
			return
		end

		setGoal(
			Otter.ease(
				scrollingFrame.CanvasPosition.X + pixels,
				{ duration = 0.2, easingStyle = Enum.EasingStyle.Quad }
			)
		)
	end, {})

	React.useEffect(function()
		if scrollingFrameRef.current then
			updateVisibility(scrollingFrameRef.current)
		end
	end, {})

	local onOverflowStartActivated = React.useCallback(function()
		moveScrollByPixels(-SCROLL_STEP)
	end, { moveScrollByPixels })

	local onOverflowEndActivated = React.useCallback(function()
		moveScrollByPixels(SCROLL_STEP)
	end, { moveScrollByPixels })

	return React.createElement(View, withCommonProps(props, { tag = "auto-y size-full-0" }), {
		Scroll = React.createElement(ScrollView, {
			LayoutOrder = 1,
			tag = "size-full",
			onCanvasPositionChanged = updateVisibility,
			onAbsoluteWindowSizeChanged = updateVisibility,
			scrollingFrameRef = scrollingFrameRef,
			selection = if Flags.FoundationTabsDisableScrollSelection
				then {
					Selectable = false,
				}
				else nil,
			scroll = {
				AutomaticSize = Enum.AutomaticSize.Y,
				AutomaticCanvasSize = Enum.AutomaticSize.X,
				ScrollingDirection = Enum.ScrollingDirection.X,
				scrollBarVisibility = Visibility.None,
			},
		}, props.children),
		OverflowStart = React.createElement(OverflowButton, {
			LayoutOrder = 3,
			Position = UDim2.fromScale(0, 0),
			size = props.size,
			isStart = true,
			ZIndex = 2,
			Visible = isStartVisible,
			onActivated = onOverflowStartActivated,
			gradient = START_GRADIENT,
			tag = "padding-right-small",
			icon = "chevron-large-left",
			testId = `{props.testId}--overflow-start`,
		}),
		OverflowEnd = React.createElement(OverflowButton, {
			LayoutOrder = 4,
			Position = UDim2.fromScale(1, 0),
			size = props.size,
			ZIndex = 2,
			Visible = isEndOverflowVisible,
			onActivated = onOverflowEndActivated,
			gradient = END_GRADIENT,
			tag = "padding-left-small anchor-top-right",
			icon = "chevron-large-right",
			testId = `{props.testId}--overflow-end`,
		}),
	})
end

return OverflowScrollContainer
