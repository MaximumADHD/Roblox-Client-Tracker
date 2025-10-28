local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local View = require(Foundation.Components.View)
local ScrollView = require(Foundation.Components.ScrollView)

export type SheetContentProps = {
	children: React.ReactNode,
}

local function SheetContent(props: SheetContentProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local sheet = React.useContext(SheetContext)

	local innerScrollingEnabled = sheet.innerScrollingEnabled
	local setInnerScrollY = sheet.setInnerScrollY
	local actionsHeight = sheet.actionsHeight
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
		local canvasSizeY = rbx.AbsoluteCanvasSize.Y
		local windowSizeY = rbx.AbsoluteWindowSize.Y
		setHasActionsDivider(canvasSizeY > windowSizeY + 1)
	end, { setHasActionsDivider })

	local isBottomSheet = sheetType == SheetType.Bottom

	return React.createElement(
		ScrollView,
		{
			ZIndex = 1,
			scroll = {
				ScrollingEnabled = innerScrollingEnabled,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.fromScale(1, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
			},
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
			tag = "col size-full-0 auto-y padding-x-medium gap-medium align-x-center",
		}, props.children)
	)
end

return React.memo(React.forwardRef(SheetContent))
