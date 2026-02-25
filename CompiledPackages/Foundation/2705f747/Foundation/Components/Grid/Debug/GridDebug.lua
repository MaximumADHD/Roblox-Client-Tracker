local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Breakpoint = require(Foundation.Enums.Breakpoint)
local GridDebugStyleSheet = require(script.Parent.GridDebugStyleSheet)
local React = require(Packages.React)
local StyleSheetContext = require(Foundation.Providers.Style.StyleSheetContext)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local getGridMetrics = require(Foundation.Utility.getGridMetrics)
local useBreakpoint = require(Foundation.Providers.Responsive.Hooks.useBreakpoint)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type Breakpoint = Breakpoint.Breakpoint

type GridDebugColProps = {
	width: number?,
	size: UDim2?,
	backgroundStyle: {
		Color3: Color3,
		Transparency: number,
	},
	LayoutOrder: number?,
	tag: string?,
}

local function DebugCol(props: GridDebugColProps)
	return React.createElement(View, {
		Size = props.size or UDim2.new(0, props.width or 0, 1, 0),
		backgroundStyle = props.backgroundStyle,
		LayoutOrder = props.LayoutOrder,
		tag = props.tag,
	})
end

export type GridDebugProps = {
	align: Enum.ItemLineAlignment?,
	debugTransparency: number?,
	children: React.ReactNode?,
}

local defaultProps = {
	debugTransparency = 0.7,
}

local function GridDebug(gridDebugProps: GridDebugProps)
	local props = withDefaults(gridDebugProps, defaultProps)
	local tokens = useTokens()
	local debugSheet, setDebugSheet = React.useState(nil)
	local responsive = useResponsive()
	local measureInstance, measureCallbackRef = React.useState(nil :: GuiObject?)
	local breakpoint: Breakpoint, absoluteSize = useBreakpoint(measureInstance)
	local metrics = getGridMetrics(responsive.config, breakpoint, absoluteSize.X)
	local maxWidth = responsive.config.breakpoint.widths[Breakpoint.XLarge]
	local items = {}

	local alignTag = ({
		[Enum.ItemLineAlignment.Start] = "position-top-left anchor-top-left",
		[Enum.ItemLineAlignment.Center] = "position-top-center anchor-top-center",
		[Enum.ItemLineAlignment.End] = "position-top-right anchor-top-right",
	})[props.align :: Enum.ItemLineAlignment]

	for i = 1, metrics.full.colCount - 1 do
		if i < metrics.full.colCount then
			table.insert(
				items,
				React.createElement(DebugCol, {
					key = `DebugCol{i}`,
					width = metrics.gutterWidth,
					backgroundStyle = {
						Color3 = tokens.Color.System.Alert.Color3,
						Transparency = 0.5,
					},
					LayoutOrder = i,
				})
			)
		end
	end

	return React.createElement(View, {
		tag = `size-full-full {alignTag}`,
	}, {
		GridDebugStyleSheet = React.createElement(GridDebugStyleSheet, {
			breakpoint = breakpoint :: Breakpoint,
			ref = setDebugSheet,
		}),
		GridDebugMeasureWrapper = React.createElement(View, { ref = measureCallbackRef, tag = "size-full-0" }, {
			GridMeasureSizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(maxWidth, math.huge),
			}),
		}),
		GridDebugMeasure = React.createElement(View, {
			Size = UDim2.new(1, 0, 0, 4),
			backgroundStyle = {
				-- selene: allow(roblox_internal_custom_color)
				Color3 = Color3.fromRGB(255, 0, 0),
				Transparency = props.debugTransparency,
			},
		}),
		GridDebugSizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(maxWidth, math.huge),
		}),
		GridDebugSizeLabel = React.createElement(Text, {
			tag = "text-label-small position-top-center anchor-top-center auto-xy bg-over-media-300 padding-xxsmall text-truncate-end",
			Text = `breakpoint: {responsive.config.breakpoint.shortNames[breakpoint]}, width: {absoluteSize.X}, columns: {metrics.full.colCount}, maxWidth: {maxWidth}, margin: {metrics.margin}, gapWidth: {metrics.gutterWidth}`,
		}),
		GridDebug = React.createElement(View, {
			tag = "size-full-full row",
			backgroundStyle = {
				Color3 = tokens.Color.System.Emphasis.Color3,
				Transparency = props.debugTransparency,
			},
		}, {
			LeftMargin = React.createElement(DebugCol, {
				width = metrics.margin,
				backgroundStyle = {
					Color3 = tokens.Color.System.Warning.Color3,
					Transparency = props.debugTransparency,
				},
				LayoutOrder = 0,
			}),
			Columns = React.createElement(View, {
				tag = "size-0-full row fill flex-x-evenly",
				backgroundStyle = {
					Color3 = tokens.Color.System.Emphasis.Color3,
					Transparency = props.debugTransparency,
				},
				LayoutOrder = 1,
			}, items),
			RightMargin = React.createElement(DebugCol, {
				width = metrics.margin,
				backgroundStyle = {
					Color3 = tokens.Color.System.Warning.Color3,
					Transparency = props.debugTransparency,
				},
				LayoutOrder = 2,
			}),
		}),
		GridDebugContent = if debugSheet
			then React.createElement(
				StyleSheetContext.Provider,
				{
					value = debugSheet,
				},
				React.createElement(View, {
					tag = "size-full-full",
				}, {
					GridDebugPadding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, metrics.gapHeight * 2),
					}),
					GridDebugChildren = React.createElement(React.Fragment, nil, gridDebugProps.children),
				})
			)
			else nil,
	})
end

return GridDebug
