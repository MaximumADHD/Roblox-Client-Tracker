local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local Sheet = script:FindFirstAncestor("Sheet")
local SheetContext = require(Sheet.SheetContext)
local SheetType = require(Sheet.SheetType)

local useTokens = require(Foundation.Providers.Style.useTokens)

local View = require(Foundation.Components.View)

export type SheetActionsProps = {
	children: React.ReactNode,
}

local function SheetActions(props: SheetActionsProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local sheetContext = React.useContext(SheetContext)
	local sheetHeightAvailable = sheetContext.sheetHeightAvailable
	local actionsHeight = sheetContext.actionsHeight
	local setActionsHeight = sheetContext.setActionsHeight
	local hasActionsDivider = sheetContext.hasActionsDivider
	local safeAreaPadding = sheetContext.safeAreaPadding
	local bottomPadding = sheetContext.bottomPadding
	local sheetType = sheetContext.sheetType
	local testId = sheetContext.testId
	assert(
		sheetHeightAvailable
			and actionsHeight
			and setActionsHeight
			and hasActionsDivider
			and safeAreaPadding
			and bottomPadding
			and testId,
		"SheetActions must be used within a Sheet"
	)

	local innerSurface = sheetContext.innerSurface

	local isBottomSheet = sheetType == SheetType.Bottom

	local sheetActions = React.createElement(View, {
		tag = {
			["row gap-small size-full-0 auto-y"] = true,
			["bg-surface-100"] = isBottomSheet,
		},
		padding = {
			top = UDim.new(0, tokens.Margin.Small),
			left = UDim.new(0, tokens.Margin.Small),
			right = UDim.new(0, tokens.Margin.Small),
			bottom = UDim.new(0, bottomPadding + tokens.Margin.Small),
		},
		stroke = {
			Color = tokens.Color.Stroke.Default.Color3,
			Transparency = tokens.Color.Stroke.Default.Transparency,
			Thickness = hasActionsDivider:map(function(hasDivider: boolean)
				if hasDivider then
					return tokens.Stroke.Standard
				else
					return 0
				end
			end),
		},
		onAbsoluteSizeChanged = if isBottomSheet
			then function(instance: GuiObject)
				setActionsHeight(instance.AbsoluteSize.Y - bottomPadding)
			end
			else nil,
		ZIndex = 1,
		testId = `{testId}--actions`,
		Position = if isBottomSheet
			then React.joinBindings({
				sheetHeightAvailable = sheetHeightAvailable,
				actionsHeight = actionsHeight,
			}):map(function(bindings: {
				sheetHeightAvailable: number,
				actionsHeight: number,
			})
				return UDim2.new(0, 0, 1, -math.min(bindings.sheetHeightAvailable, bindings.actionsHeight))
			end)
			else nil,
		LayoutOrder = 3,
		ref = ref,
	}, props.children)

	if isBottomSheet then
		return innerSurface and ReactRoblox.createPortal(sheetActions, innerSurface)
	end

	return sheetActions
end

return React.memo(React.forwardRef(SheetActions))
