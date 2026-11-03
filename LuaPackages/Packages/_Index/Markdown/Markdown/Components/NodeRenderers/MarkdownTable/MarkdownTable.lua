local Root = script:FindFirstAncestor("Markdown")

local Packages = Root.Parent
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local columnWidths = require(script.Parent.columnWidths)
local mergeContexts = require(Root.Utils.mergeContexts)
local Types = require(Root.Types)

local ScrollView = Foundation.ScrollView
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local function getTableContext(context: Types.Context): Types.Context
	return mergeContexts(context, {
		textStyles = {
			textTags = "text-body-medium content-default",
		},
	})
end

local function getColumnCount(node: Types.Node): number
	local firstRow = node.children[1]
	return if firstRow then #firstRow.children else 0
end

local function getCellPadding(context: Types.Context, tokens: Foundation.Tokens): Types.TableCellPadding
	local textSize = context.textStyles.textSize or tokens.Typography.BodyMedium.FontSize
	local scale = textSize / tokens.Typography.BodyMedium.FontSize
	return {
		x = math.round(tokens.Padding.XLarge * scale),
		y = math.round(tokens.Padding.Medium * scale),
		text = math.round(tokens.Padding.XXSmall * scale),
	}
end

export type Props = {
	node: Types.Node,
	context: Types.Context,
}

local function MarkdownTable(props: Props)
	local tokens = useTokens()

	local availableWidth, setAvailableWidth = React.useState(0)
	local contentWidths, setContentWidths = React.useState(nil :: { number }?)
	local widthCache = React.useRef(nil :: columnWidths.WidthCache?)

	local tableContext = React.useMemo(function()
		return getTableContext(props.context)
	end, { props.context })

	React.useEffect(function()
		local cache = widthCache.current or columnWidths.createWidthCache()
		widthCache.current = cache
		local measured = columnWidths.measureColumnContentWidths(props.node, tableContext, cache)
		setContentWidths(function(previous: { number }?)
			if previous and Dash.shallowEqual(previous, measured) then
				return previous
			end

			return measured
		end)
	end, { props.node, tableContext } :: { any })

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setAvailableWidth(rbx.AbsoluteSize.X)
	end, {})

	local cellPadding = getCellPadding(tableContext, tokens)
	local columnCount = getColumnCount(props.node)
	local borderInset = math.ceil(tokens.Stroke.Standard)
	local dividersWidth = math.max(columnCount - 1, 0) * tokens.Stroke.Standard
	local widths = if contentWidths and availableWidth > 0
		then columnWidths.computeColumnWidths(
			columnWidths.fillUnmeasuredColumns(contentWidths, columnCount),
			availableWidth - borderInset * 2 - dividersWidth,
			cellPadding.x * 2
		)
		else nil

	local canvasWidth = if widths then Dash.sum(widths) + dividersWidth + borderInset * 2 else 0
	local scrollBarSpace = if canvasWidth > availableWidth then tokens.Size.Size_150 + tokens.Gap.XSmall else 0

	local SCROLL_PROPS = React.useMemo(function()
		return {
			AutomaticSize = Enum.AutomaticSize.Y,
			CanvasSize = UDim2.fromOffset(canvasWidth, 0),
			ScrollingDirection = Enum.ScrollingDirection.X,
			scrollBarVisibility = Foundation.Enums.Visibility.Always,
		}
	end, { canvasWidth })

	return React.createElement(View, {
		tag = "size-full-0 auto-y",
		onAbsoluteSizeChanged = onAbsoluteSizeChanged,
	}, {
		ScrollView = React.createElement(ScrollView, {
			tag = "size-full-0 auto-y",
			scroll = SCROLL_PROPS,
		}, {
			BorderInset = React.createElement(View, {
				tag = "auto-xy",
			}, {
				UIPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, borderInset),
					PaddingBottom = UDim.new(0, borderInset + scrollBarSpace),
					PaddingLeft = UDim.new(0, borderInset),
					PaddingRight = UDim.new(0, borderInset),
				}),

				Table = widths and React.createElement(
					View,
					{
						tag = "auto-xy col gap-none radius-medium stroke-standard stroke-default",
					},
					tableContext.processChildren(
						props.node,
						mergeContexts(tableContext, {
							tableColumnWidths = widths,
							tableCellPadding = cellPadding,
							tableRowCount = #props.node.children,
						})
					)
				),
			}),
		}),
	})
end

return MarkdownTable
