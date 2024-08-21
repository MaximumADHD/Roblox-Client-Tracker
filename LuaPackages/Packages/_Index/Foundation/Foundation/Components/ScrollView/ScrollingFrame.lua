local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)

local ScrollBarVisibility = require(Foundation.Enums.ScrollBarVisibility)
type ScrollBarVisibility = ScrollBarVisibility.ScrollBarVisibility

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type Bindable<T> = Types.Bindable<T>

local HIDE_SCROLLBAR_DELAY = 3
local ANIMATION_CONFIG = {
	frequency = 2,
}

export type ScrollingFrameProps = {
	controlState: ControlState,
	scrollBarVisibility: Bindable<ScrollBarVisibility>?,
	children: React.Node?,

	AutomaticCanvasSize: Bindable<Enum.AutomaticSize>?,
	CanvasSize: Bindable<UDim2>?,
	ScrollingDirection: Bindable<Enum.ScrollingDirection>?,
}

local defaultProps = {
	scrollBarVisibility = "Auto",
}

local function ScrollingFrame(scrollingFrameProps: ScrollingFrameProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(scrollingFrameProps, defaultProps)
	local tokens = useTokens()
	local cursor = useCursor()

	local delayRef = React.useRef(nil :: thread?)
	local scrollBarTransparency, updateScrollBarTransparency = ReactOtter.useAnimatedBinding(1)
	local setIsScrollBarVisible = React.useCallback(function(isVisible: boolean, delay: number?)
		if delayRef.current then
			task.cancel(delayRef.current)
		end

		if isVisible then
			updateScrollBarTransparency(ReactOtter.spring(tokens.Color.Shift.Shift_300.Transparency, ANIMATION_CONFIG))
		end

		if delay ~= nil then
			delayRef.current = task.delay(delay, function()
				updateScrollBarTransparency(ReactOtter.spring(1, ANIMATION_CONFIG))
			end)
		end
	end, { tokens })

	React.useEffect(function()
		if props.scrollBarVisibility == "None" then
			setIsScrollBarVisible(false, 0)
		elseif props.scrollBarVisibility == "Always" then
			setIsScrollBarVisible(true)
		else
			setIsScrollBarVisible(
				props.controlState == ControlState.Hover
					or props.controlState == ControlState.Selected
					or props.controlState == ControlState.Pressed,
				if props.controlState == ControlState.Default then 0 else nil
			)
		end
	end, { props.scrollBarVisibility :: any, props.controlState })

	return React.createElement("ScrollingFrame", {
		-- Scrolling props
		AutomaticCanvasSize = props.AutomaticCanvasSize,
		CanvasSize = props.CanvasSize,
		ScrollingDirection = props.ScrollingDirection,
		ScrollBarImageColor3 = tokens.Color.Shift.Shift_300.Color3,
		ScrollBarImageTransparency = scrollBarTransparency,

		-- Support insets when they are fixed at the engine level
		-- https://roblox.atlassian.net/browse/UISYS-3298

		-- Invisible frame props
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
		SelectionImageObject = cursor,

		[React.Change.CanvasPosition] = if props.scrollBarVisibility == "Auto"
			then function(rbx)
				setIsScrollBarVisible(true, HIDE_SCROLLBAR_DELAY)
			end
			else nil,

		ref = ref,
	}, props.children)
end

return React.memo(React.forwardRef(ScrollingFrame))
