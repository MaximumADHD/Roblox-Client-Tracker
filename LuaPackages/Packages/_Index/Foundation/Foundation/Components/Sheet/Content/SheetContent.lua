local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Flags = require(Foundation.Utility.Flags)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local ScrollView = require(Foundation.Components.ScrollView)
local View = require(Foundation.Components.View)
local isScrollingFrameOverflowingY = require(Foundation.Utility.isScrollingFrameOverflowingY)

export type SheetContentProps = {
	children: React.ReactNode,
}

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

	local updateHasActionsDivider = React.useCallback(function(rbx: ScrollingFrame)
		setInnerScrollY(rbx.CanvasPosition.Y)
		setHasActionsDivider(isScrollingFrameOverflowingY(rbx, 1))
	end, { setHasActionsDivider, setInnerScrollY } :: { unknown })

	local viewSizeY, setViewSizeY
	if Flags.FoundationAddHeightPropToCenterSheet then
		viewSizeY, setViewSizeY = React.useBinding(0)
	end
	local updateScrollViewCanvasSize = if Flags.FoundationAddHeightPropToCenterSheet
		then React.useCallback(function(rbx: GuiObject)
			setViewSizeY(rbx.AbsoluteSize.Y)
		end, {})
		else nil

	local isBottomSheet = sheetType == SheetType.Bottom

	return React.createElement(
		ScrollView,
		{
			ZIndex = 1,
			scroll = {
				ScrollingEnabled = innerScrollingEnabled,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = if Flags.FoundationAddHeightPropToCenterSheet and sheetContentHeight
					then viewSizeY:map(function(sizeY: number)
						return UDim2.new(1, 0, 0, sizeY)
					end)
					else UDim2.fromScale(1, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
			},
			Size = if Flags.FoundationAddHeightPropToCenterSheet and sheetContentHeight
				then UDim2.fromScale(1, 1)
				else nil,
			padding = {
				top = hasHeader:map(function(value: boolean)
					return if value
						then UDim.new(0, 0)
						else UDim.new(0, if isBottomSheet then tokens.Padding.Small else tokens.Margin.Small)
				end),
				bottom = if isBottomSheet
					then actionsHeight:map(function(value: number)
						return UDim.new(0, value + bottomPadding + tokens.Margin.Small)
					end)
					else UDim.new(0, tokens.Padding.Small),
				left = UDim.new(0, tokens.Padding.Small),
				right = UDim.new(0, tokens.Padding.Small),
			},
			ClipsDescendants = if isBottomSheet then hasHeader else true,
			onCanvasPositionChanged = function(rbx: ScrollingFrame)
				setInnerScrollY(rbx.CanvasPosition.Y)
			end,
			onAbsoluteCanvasSizeChanged = updateHasActionsDivider,
			onAbsoluteWindowSizeChanged = updateHasActionsDivider,
			testId = `{testId}--content`,
			tag = "size-full-0 auto-y fill",
			ref = ref,
		},
		React.createElement(View, {
			onAbsoluteSizeChanged = updateScrollViewCanvasSize,
			tag = "col size-full-0 auto-y padding-x-medium gap-medium align-x-center",
		}, props.children)
	)
end

return React.memo(React.forwardRef(SheetContent))
