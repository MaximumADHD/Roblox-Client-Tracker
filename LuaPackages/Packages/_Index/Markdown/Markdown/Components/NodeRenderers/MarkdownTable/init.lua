local Root = script:FindFirstAncestor("Markdown")

local Packages = Root.Parent
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local getRowContext = require(script.getRowContext)
local MarkdownTable = require(script.MarkdownTable)
local renderInline = require(Root.Components.NodeRenderers.renderInline)
local shouldUseTopPadding = require(Root.Utils.shouldUseTopPadding)
local TableAlignment = require(Root.Enums.TableAlignment)
local Types = require(Root.Types)

local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local TABLE_CELL_ALIGNMENTS: { [string]: Enum.HorizontalAlignment } = {
	[TableAlignment.Left] = Enum.HorizontalAlignment.Left,
	[TableAlignment.Center] = Enum.HorizontalAlignment.Center,
	[TableAlignment.Right] = Enum.HorizontalAlignment.Right,
}

local function renderTable(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		tag = "size-full-0 auto-y col",
		LayoutOrder = node.index,
	}, {
		UIPadding = shouldUseTopPadding(node) and React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),

		Table = React.createElement(MarkdownTable, {
			node = node,
			context = context,
		}),
	})
end

local function TableDivider(props: { isVertical: boolean, LayoutOrder: number })
	local tokens = useTokens()
	local thickness = tokens.Stroke.Standard

	return React.createElement(View, {
		tag = "self-stretch",
		Size = if props.isVertical then UDim2.fromOffset(thickness, 0) else UDim2.fromOffset(0, thickness),
		backgroundStyle = tokens.Color.Stroke.Default,
		LayoutOrder = props.LayoutOrder,
	})
end

local function renderTableRowCells(
	node: Types.Node,
	context: Types.Context,
	ref: React.RefObject<GuiObject?>,
	onAbsoluteSizeChanged: ((rbx: GuiObject) -> ())?
): React.ReactElement
	local children = context.processChildren(node, getRowContext(node, context))

	for columnIndex = 2, #node.children do
		table.insert(
			children,
			React.createElement(TableDivider, {
				key = `Divider{columnIndex}`,
				isVertical = true,
				LayoutOrder = columnIndex * 2 - 1,
			})
		)
	end

	return React.createElement(View, {
		tag = "auto-xy row items-start",
		onAbsoluteSizeChanged = onAbsoluteSizeChanged,
		LayoutOrder = 2,
		ref = ref,
	}, children)
end

local function TableRow(props: {
	node: Types.Node,
	context: Types.Context,
})
	local node = props.node

	local isHeader = node.name == "TABLE_HEADER"
	local isLastRow = node.index == props.context.tableRowCount

	local cellsRef = React.useRef(nil :: GuiObject?)
	local cellsSize, setCellsSize = React.useState(Vector2.zero)
	local onCellsSizeChanged = React.useCallback(function(rbx: GuiObject)
		setCellsSize(rbx.AbsoluteSize)
	end, {})

	React.useLayoutEffect(function()
		if isHeader and cellsRef.current then
			setCellsSize(cellsRef.current.AbsoluteSize)
		end
	end, { isHeader })

	return React.createElement(View, {
		tag = "auto-xy col items-stretch",
		LayoutOrder = node.index,
	}, {
		Divider = if node.index > 1
			then React.createElement(TableDivider, {
				LayoutOrder = 1,
				isVertical = false,
			})
			else nil,

		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Background = if isHeader
				then React.createElement(View, {
					tag = {
						["bg-shift-100"] = true,
						["radius-medium"] = isLastRow,
						["radius-top-medium"] = not isLastRow,
					},
					Size = UDim2.fromOffset(cellsSize.X, cellsSize.Y),
					ZIndex = 0,
				})
				else nil,

			Cells = renderTableRowCells(node, props.context, cellsRef, if isHeader then onCellsSizeChanged else nil),
		}),
	})
end

local function renderTableRow(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(TableRow, {
		key = tostring(node.index),
		node = node,
		context = context,
	})
end

local function renderTableCell(node: Types.Node, context: Types.Context): React.ReactElement
	local index = node.index or 1
	local columnWidth = if context.tableColumnWidths then context.tableColumnWidths[index] else nil
	local alignment = node.attributes and node.attributes.alignment
	local padding = context.tableCellPadding or { x = 0, y = 0, text = 0 }

	return React.createElement(View, {
		key = tostring(index),
		tag = "auto-y",
		Size = UDim2.fromOffset(columnWidth or 0, 0),
		LayoutOrder = index * 2,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, padding.y),
			PaddingBottom = UDim.new(0, padding.y),
			PaddingLeft = UDim.new(0, padding.x),
			PaddingRight = UDim.new(0, padding.x),
		}),

		Text = React.createElement(View, {
			tag = "size-full-0 auto-y",
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, padding.text),
				PaddingBottom = UDim.new(0, padding.text),
			}),

			InlineLayout = renderInline(node, context, if alignment then TABLE_CELL_ALIGNMENTS[alignment] else nil),
		}),
	})
end

return {
	renderTable = renderTable,
	renderTableRow = renderTableRow,
	renderTableCell = renderTableCell,
}
