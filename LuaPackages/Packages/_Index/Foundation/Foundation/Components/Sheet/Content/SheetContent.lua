local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Constants = require(Foundation.Constants)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local Flags = require(Foundation.Utility.Flags)
local ScrollView = require(Foundation.Components.ScrollView)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local devAssert = require(Foundation.Utility.devAssert)
local isScrollingFrameOverflowingY = require(Foundation.Utility.isScrollingFrameOverflowingY)

local useComposedRef = ReactUtils.useComposedRef

local AT_END_TOLERANCE = 1

local function getMaxCanvasPositionY(rbx: ScrollingFrame): number
	return math.max(0, rbx.AbsoluteCanvasSize.Y - rbx.AbsoluteWindowSize.Y)
end

export type SheetContentProps = {
	isContentFullBleed: boolean?,
	-- Anchors content to the bottom edge, like a chat log: content starts scrolled to the end and follows new content while scrolled to the end.
	-- In a bottom sheet with multiple snap points, lower snap points hide the top of the content instead of the bottom.
	isReversed: boolean?,
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	children: React.ReactNode,
} & Types.SelectionProps

-- selene: allow(high_cyclomatic_complexity)
local function SheetContent(props: SheetContentProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local tokens = useTokens()
	local sheet = React.useContext(SheetContext)

	local innerScrollingEnabled = sheet.innerScrollingEnabled
	local setInnerScrollY = sheet.setInnerScrollY
	local innerScrollingRef = sheet.innerScrollingRef
	local actionsHeight = sheet.actionsHeight
	local sheetContentHeight = sheet.sheetContentHeight
	local setHasActionsDivider = sheet.setHasActionsDivider
	local bottomPadding = sheet.bottomPadding
	local hasHeader = sheet.hasHeader
	local hasFullBleed = sheet.hasFullBleed
	local fullBleedHeight = sheet.fullBleedHeight
	local sheetType = sheet.sheetType
	local testId = sheet.testId
	assert(
		innerScrollingEnabled
			and setInnerScrollY
			and actionsHeight
			and setHasActionsDivider
			and bottomPadding
			and hasHeader
			and testId,
		"SheetContent must be used within a Sheet"
	)

	local isReversed = if Flags.FoundationSheetReversedContent then props.isReversed == true else false
	local contentRevealOffset = if isReversed then sheet.contentRevealOffset else nil
	if Flags.FoundationSheetReversedContent then
		devAssert(
			not (isReversed and hasFullBleed),
			"Sheet.Content with isReversed=true is unsupported when used with Sheet.FullBleed"
		)
	end

	if Flags.FoundationSheetReversedContent then
		local setIsContentReversed = sheet.setIsContentReversed
		React.useLayoutEffect(function(): (() -> ())?
			if not isReversed or not setIsContentReversed then
				return nil
			end
			setIsContentReversed(true)
			return function()
				setIsContentReversed(false)
			end
		end, { isReversed, setIsContentReversed } :: { unknown })
	end

	local hasOverflowY, setHasOverflowY = React.useBinding(false)
	local isAtEnd = if Flags.FoundationSheetReversedContent then React.useRef(true) else nil :: never
	local windowSizeY: React.Binding<number> = nil :: never
	local setWindowSizeY: (number) -> () = nil :: never
	if Flags.FoundationSheetReversedContent then
		windowSizeY, setWindowSizeY = React.useBinding(0)
	end

	local updateScrollState = React.useCallback(function(rbx: ScrollingFrame)
		if isReversed and isAtEnd.current then
			rbx.CanvasPosition = Vector2.new(0, getMaxCanvasPositionY(rbx))
		end
		setInnerScrollY(rbx.CanvasPosition.Y)

		local isOverflowing = isScrollingFrameOverflowingY(rbx, 1)

		if isReversed then
			setWindowSizeY(rbx.AbsoluteWindowSize.Y)
			setHasActionsDivider(getMaxCanvasPositionY(rbx) - rbx.CanvasPosition.Y > AT_END_TOLERANCE)
		else
			setHasActionsDivider(isOverflowing)
		end
		setHasOverflowY(isOverflowing)
	end, { isReversed, setHasActionsDivider, setInnerScrollY } :: { unknown })

	local viewSizeY, setViewSizeY = React.useBinding(0)
	local updateScrollViewCanvasSize = React.useCallback(function(rbx: GuiObject)
		setViewSizeY(rbx.AbsoluteSize.Y)
	end, {})

	-- The part of the scroll window hidden above the sheet by a lower snap point is added as padding at the top of the
	-- canvas, so scrolling to the top still reveals the oldest content. BottomSheet moves CanvasPosition by the same
	-- amount whenever the padding changes, so the content doesn't move on screen.
	local reversedContentPosition = if contentRevealOffset
		then contentRevealOffset:map(function(offset: number)
			return UDim2.fromOffset(0, offset)
		end)
		else nil
	local reversedContentSize = if contentRevealOffset
		then React.joinBindings({ windowSizeY = windowSizeY, revealOffset = contentRevealOffset })
			:map(function(values: { windowSizeY: number, revealOffset: number })
				return UDim2.new(1, 0, 0, math.max(0, values.windowSizeY - values.revealOffset))
			end)
		elseif isReversed then windowSizeY:map(function(sizeY: number)
			return UDim2.new(1, 0, 0, sizeY)
		end)
		else nil

	local isBottomSheet = sheetType == SheetType.Bottom

	local horizontalPadding = if props.isContentFullBleed then nil else UDim.new(0, tokens.Padding.Small)

	local isSelectableEnabled = if props.Selectable == nil then true else props.Selectable
	local selectable = if hasOverflowY
		then hasOverflowY:map(function(overflow: boolean)
			return isSelectableEnabled and overflow
		end)
		else nil

	local isVerticalSheetGesture = sheet.isVerticalSheetGesture

	-- Workaround: View with onActivated=noop acts as an interaction
	-- sink to block accidental taps on content during vertical drags.
	local interactionSinkElement = React.createElement("Folder", nil, {
		ContentInteractionSink = if isVerticalSheetGesture
			then React.createElement(View, {
				Size = UDim2.fromScale(1, 1),
				Selectable = false,
				ZIndex = 2,
				testId = `{testId}--content--interaction-sink`,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				onActivated = Dash.noop,
			})
			else nil,
	})

	local scrollingFrameRef = useComposedRef(
		innerScrollingRef :: React.Ref<any>,
		props.scrollingFrameRef :: React.Ref<any>?
	) :: React.Ref<any>

	-- Reversed content is at least the visible height and grows with its children, so short content sits at the
	-- bottom and long content starts at the top of the canvas. Aligning in the ScrollingFrame itself would align
	-- against the window rather than the automatic canvas, pushing overflow into unreachable negative canvas space.
	local contentView = React.createElement(View, {
		onAbsoluteSizeChanged = updateScrollViewCanvasSize,
		Position = reversedContentPosition,
		Size = reversedContentSize,
		tag = {
			["col align-x-center gap-medium size-full-0 auto-y"] = true,
			["padding-x-medium"] = not props.isContentFullBleed,
			["align-y-bottom"] = isReversed :: boolean,
		},
	}, {
		FullBleedSpacer = if hasFullBleed and fullBleedHeight
			then React.createElement(View, {
				Size = fullBleedHeight:map(function(value: number)
					return UDim2.new(1, 0, 0, math.max(0, value))
				end),
				LayoutOrder = Constants.MIN_LAYOUT_ORDER,
				testId = `{testId}--content--full-bleed-spacer`,
			})
			else nil,
		Children = React.createElement(React.Fragment, nil, props.children),
		ContentInteractionSinkContainer = interactionSinkElement,
	})

	local scrollView = React.createElement(ScrollView, {
		scrollingFrameRef = scrollingFrameRef,
		ZIndex = 1,
		selection = {
			Selectable = selectable,
			NextSelectionUp = props.NextSelectionUp,
			NextSelectionDown = props.NextSelectionDown,
			NextSelectionLeft = props.NextSelectionLeft,
			NextSelectionRight = props.NextSelectionRight,
		},
		scroll = {
			ScrollingEnabled = innerScrollingEnabled,
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasSize = if sheetContentHeight
				then viewSizeY:map(function(sizeY: number)
					return UDim2.new(1, 0, 0, sizeY)
				end)
				else UDim2.fromScale(1, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
		},
		Size = if sheetContentHeight then UDim2.fromScale(1, 1) else nil,
		Position = if contentRevealOffset
			then contentRevealOffset:map(function(offset: number)
				return UDim2.fromOffset(0, -offset)
			end)
			else nil,
		padding = {
			top = hasHeader:map(function(value: boolean)
				return if value or hasFullBleed
					then UDim.new(0, 0)
					else UDim.new(0, if isBottomSheet then tokens.Padding.Small else tokens.Margin.Small)
			end),
			bottom = if isBottomSheet
				then actionsHeight:map(function(value: number)
					return UDim.new(0, value + bottomPadding + tokens.Margin.Small)
				end)
				else UDim.new(0, tokens.Padding.Small),
			left = horizontalPadding,
			right = horizontalPadding,
		},
		ClipsDescendants = if isBottomSheet then hasHeader else true,
		onCanvasPositionChanged = function(rbx: ScrollingFrame)
			if isReversed then
				isAtEnd.current = getMaxCanvasPositionY(rbx) - rbx.CanvasPosition.Y <= AT_END_TOLERANCE
				setHasActionsDivider(not isAtEnd.current)
			end
			setInnerScrollY(rbx.CanvasPosition.Y)
		end,
		onAbsoluteCanvasSizeChanged = updateScrollState,
		onAbsoluteWindowSizeChanged = updateScrollState,
		testId = `{testId}--content`,
		tag = if contentRevealOffset then "size-full" else "fill size-full-0 auto-y",
		ref = ref,
	}, contentView)

	if contentRevealOffset then
		-- The viewport keeps the tallest snap point's layout and clips the part of the scroll view
		-- that contentRevealOffset moves above it, so the sheet's top edge reveals content instead of moving it.
		-- It clips with or without a header, since nothing else clips at the sheet's top edge.
		return React.createElement(View, {
			ClipsDescendants = true,
			ZIndex = 1,
			tag = "fill size-full-0",
			testId = `{testId}--content--viewport`,
		}, {
			ScrollView = scrollView,
		})
	end

	return scrollView
end

return React.memo(React.forwardRef(SheetContent))
