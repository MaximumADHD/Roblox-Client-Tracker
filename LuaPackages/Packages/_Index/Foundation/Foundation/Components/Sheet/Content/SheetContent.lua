local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local ScrollView = require(Foundation.Components.ScrollView)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local isScrollingFrameOverflowingY = require(Foundation.Utility.isScrollingFrameOverflowingY)

export type SheetContentProps = {
	isContentFullBleed: boolean?,
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	children: React.ReactNode,
} & Types.SelectionProps

local function SheetContent(props: SheetContentProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local sheet = React.useContext(SheetContext)

	local innerScrollingEnabled = sheet.innerScrollingEnabled
	local setInnerScrollY = sheet.setInnerScrollY
	local actionsHeight = sheet.actionsHeight
	local sheetContentHeight = sheet.sheetContentHeight
	local setHasActionsDivider = sheet.setHasActionsDivider
	local bottomPadding = sheet.bottomPadding
	local hasHeader = sheet.hasHeader
	local hasFullBleed = if Flags.FoundationSheetFullBleed then sheet.hasFullBleed else false
	local fullBleedHeight = if Flags.FoundationSheetFullBleed then sheet.fullBleedHeight else nil
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

	local hasOverflowY, setHasOverflowY = React.useBinding(false)

	local updateScrollState = React.useCallback(function(rbx: ScrollingFrame)
		setInnerScrollY(rbx.CanvasPosition.Y)

		local isOverflowing = isScrollingFrameOverflowingY(rbx, 1)

		setHasActionsDivider(isOverflowing)
		setHasOverflowY(isOverflowing)
	end, { setHasActionsDivider, setInnerScrollY } :: { unknown })

	local viewSizeY, setViewSizeY = React.useBinding(0)
	local updateScrollViewCanvasSize = React.useCallback(function(rbx: GuiObject)
		setViewSizeY(rbx.AbsoluteSize.Y)
	end, {})

	local isBottomSheet = sheetType == SheetType.Bottom

	local horizontalPadding = if Flags.FoundationFullBleedSheetContent and props.isContentFullBleed
		then nil
		else UDim.new(0, tokens.Padding.Small)

	local isSelectableEnabled = if props.Selectable == nil then true else props.Selectable
	local selectable = if hasOverflowY
		then hasOverflowY:map(function(overflow: boolean)
			return isSelectableEnabled and overflow
		end)
		else nil

	return React.createElement(
		ScrollView,
		{
			scrollingFrameRef = props.scrollingFrameRef,
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
				setInnerScrollY(rbx.CanvasPosition.Y)
			end,
			onAbsoluteCanvasSizeChanged = updateScrollState,
			onAbsoluteWindowSizeChanged = updateScrollState,
			testId = `{testId}--content`,
			tag = "fill size-full-0 auto-y",
			ref = ref,
		},
		React.createElement(
			View,
			{
				onAbsoluteSizeChanged = updateScrollViewCanvasSize,
				tag = if Flags.FoundationFullBleedSheetContent
					then {
						["col align-x-center gap-medium size-full-0 auto-y"] = true,
						["padding-x-medium"] = not props.isContentFullBleed,
					}
					else "col align-x-center gap-medium size-full-0 auto-y padding-x-medium",
			},
			if Flags.FoundationSheetFullBleed
				then {
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
				}
				else props.children
		)
	)
end

return React.memo(React.forwardRef(SheetContent))
