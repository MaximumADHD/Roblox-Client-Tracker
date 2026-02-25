local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Breakpoint = require(Foundation.Enums.Breakpoint)
local GridStyleSheet = require(script.Parent.GridStyleSheet)
local React = require(Packages.React)
local ResponsiveContext = require(Foundation.Providers.Responsive.ResponsiveContext)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local getGridMetrics = require(Foundation.Utility.getGridMetrics)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type ResponsiveConfig = ResponsiveContext.ResponsiveConfig
type Breakpoint = Breakpoint.Breakpoint
type Bindable<T> = Types.Bindable<T>
type ResponsiveValue<T> = Types.ResponsiveValue<T>
type GridMetrics = getGridMetrics.GridMetrics

local alignTags = {
	[Enum.ItemLineAlignment.Start] = "items-start",
	[Enum.ItemLineAlignment.Center] = "items-center",
	[Enum.ItemLineAlignment.End] = "items-end",
}

export type GridProps = {
	align: Enum.ItemLineAlignment?,
	SortOrder: Bindable<Enum.SortOrder>?,
	Wraps: Bindable<boolean>?,
	tag: string?,
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps: GridProps = {
	tag = "size-full-0 auto-y",
	align = Enum.ItemLineAlignment.Start,
	SortOrder = Enum.SortOrder.LayoutOrder,
	Wraps = true,
	testId = "--foundation-grid",
}

local function Grid(gridProps: GridProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(gridProps, defaultProps)
	local responsive = useResponsive()
	local measureInstance, measureCallbackRef = React.useState(nil :: GuiObject?)
	local breakpoint: Breakpoint, absoluteSize = useBreakpoint(measureInstance)
	local gridMetrics = getGridMetrics(responsive.config, breakpoint, absoluteSize.X)
	local maxWidth = responsive.config.breakpoint.widths[Breakpoint.XLarge]
	local alignTag = alignTags[props.align :: Enum.ItemLineAlignment]

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = props.tag :: string,
			ref = ref,
		}),
		{
			GridMeasure = React.createElement(View, { ref = measureCallbackRef, tag = "size-full-0" }, {
				GridMeasureSizeConstraint = React.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(maxWidth, math.huge),
				}),
			}),
			GridAlignment = React.createElement(View, {
				tag = `size-full-0 auto-y col flex-x-fill {alignTag}`,
			}, {
				GridStyleSheet = React.createElement(GridStyleSheet, {
					breakpoint = breakpoint :: Breakpoint,
					containerWidth = absoluteSize.X,
				}),
				Grid = React.createElement(View, {
					tag = "auto-y",
					Size = UDim2.fromOffset(absoluteSize.X, 0),
					layout = {
						Padding = if not props.Wraps then UDim.new(0, gridMetrics.gutterWidth) else nil,
						SortOrder = props.SortOrder :: Enum.SortOrder,
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalFlex = if props.Wraps then Enum.UIFlexAlignment.SpaceBetween else nil,
						Wraps = props.Wraps :: boolean?,
					},
				}, {
					GridSizeConstraint = React.createElement("UISizeConstraint", {
						MaxSize = Vector2.new(maxWidth, math.huge),
					}),
					GridMargin = React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, gridMetrics.margin),
						PaddingRight = UDim.new(0, gridMetrics.margin),
					}),
				}, props.children :: React.ReactNode),
			}),
		}
	)
end

return React.memo(React.forwardRef(Grid))
