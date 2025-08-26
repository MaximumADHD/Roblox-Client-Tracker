local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useCursor = require(Foundation.Providers.Cursor.useCursor)

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type Bindable<T> = Types.Bindable<T>

local HIDE_SCROLLBAR_DELAY = 3
local ANIMATION_CONFIG = {
	frequency = 2,
}

export type ScrollingFrameProps = {
	controlState: ControlState,
	scrollBarVisibility: Bindable<Visibility>?,
	onCanvasPositionChanged: ((instance: ScrollingFrame) -> ())?,
	onAbsoluteCanvasSizeChanged: ((instance: ScrollingFrame) -> ())?,
	onAbsoluteWindowSizeChanged: ((instance: ScrollingFrame) -> ())?,
	children: React.Node?,
	tag: string?,

	AutomaticSize: Enum.AutomaticSize?,
	AutomaticCanvasSize: Bindable<Enum.AutomaticSize>?,
	CanvasSize: Bindable<UDim2>?,
	ScrollingDirection: Bindable<Enum.ScrollingDirection>?,
	VerticalScrollBarInset: Bindable<Enum.ScrollBarInset>?,
	HorizontalScrollBarInset: Bindable<Enum.ScrollBarInset>?,
}

local defaultProps = {
	scrollBarVisibility = "Auto",
}

local function ScrollingFrame(scrollingFrameProps: ScrollingFrameProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(scrollingFrameProps, defaultProps)
	local tokens = useTokens()
	local tag = useStyleTags(scrollingFrameProps.tag)
	local scrollBarStyle = tokens.Semantic.Color.Common.Placeholder
	local scrollBarThickness = React.useMemo(function()
		if props.scrollBarVisibility == Visibility.None then
			return 0
		else
			return tokens.Size.Size_300
		end
	end, { props.scrollBarVisibility })
	local cursor = useCursor()

	local delayRef = React.useRef(nil :: thread?)
	local scrollBarTransparency, updateScrollBarTransparency = ReactOtter.useAnimatedBinding(1)
	local setIsScrollBarVisible = React.useCallback(function(isVisible: boolean, delay: number?)
		if delayRef.current then
			task.cancel(delayRef.current)
		end

		if isVisible then
			updateScrollBarTransparency(ReactOtter.spring(scrollBarStyle.Transparency, ANIMATION_CONFIG))
		end

		if delay ~= nil then
			delayRef.current = task.delay(delay, function()
				updateScrollBarTransparency(ReactOtter.spring(1, ANIMATION_CONFIG))
			end)
		end
	end, { scrollBarStyle })

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
		ScrollBarImageColor3 = scrollBarStyle.Color3,
		ScrollBarImageTransparency = scrollBarTransparency,
		ScrollBarThickness = scrollBarThickness,
		VerticalScrollBarInset = props.VerticalScrollBarInset,
		HorizontalScrollBarInset = props.HorizontalScrollBarInset,

		-- Support insets when they are fixed at the engine level
		-- https://roblox.atlassian.net/browse/UISYS-3298

		-- Invisible frame props
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AutomaticSize = props.AutomaticSize,
		Size = UDim2.fromScale(1, 1),
		SelectionImageObject = cursor,

		[React.Change.CanvasPosition] = (if props.scrollBarVisibility == "Auto"
			then function(rbx)
				setIsScrollBarVisible(true, HIDE_SCROLLBAR_DELAY)
				if props.onCanvasPositionChanged then
					props.onCanvasPositionChanged(rbx)
				end
			end
			else props.onCanvasPositionChanged) :: unknown,
		[React.Change.AbsoluteCanvasSize] = props.onAbsoluteCanvasSizeChanged,
		[React.Change.AbsoluteWindowSize] = props.onAbsoluteWindowSizeChanged,

		ref = ref,
		[React.Tag] = tag,
	}, props.children)
end

return React.memo(React.forwardRef(ScrollingFrame))
