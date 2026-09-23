local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

type ColorStyleValue = Types.ColorStyleValue

export type MatrixGridRow = {
	label: React.ReactNode?,
	cells: { React.ReactNode },
	rowTag: string?,
	backgroundStyle: ColorStyleValue?,
	stroke: {
		Color: Color3?,
		Transparency: number?,
		Thickness: number?,
	}?,
}

export type MatrixGridProps = {
	labelColumnWidth: number?,
	labelColumnHeader: string?,
	showLabelColumn: boolean?,
	showHeader: boolean?,
	columnHeaders: { string },
	cellColumnWidth: number?,
	cellColumnWidths: { number }?,
	rows: { MatrixGridRow },
	headerTextAlign: ("left" | "center")?,
	cellAlign: ("left" | "center")?,
	rowAlign: ("top" | "center")?,
	rowGap: ("large" | "xxlarge")?,
}

local HEADER_ALIGN_TAG: { [string]: string } = {
	left = "text-align-x-left",
	center = "text-align-x-center",
}

local CELL_ALIGN_TAG: { [string]: string } = {
	left = "align-x-left",
	center = "align-x-center",
}

local ROW_ALIGN_TAG: { [string]: string } = {
	top = "align-y-top",
	center = "align-y-center",
}

local function matrixLabel(text: string): React.ReactNode
	return React.createElement(Text, {
		Text = text,
		tag = "auto-xy text-caption-small text-align-x-left content-default",
	})
end

local function matrixInfoLabel(title: string, subtitle: string): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xsmall size-full-0 auto-y",
	}, {
		Title = React.createElement(Text, {
			Text = title,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Subtitle = React.createElement(Text, {
			Text = subtitle,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
	})
end

local function getCellColumnWidth(props: MatrixGridProps, cellIndex: number): number?
	if props.cellColumnWidths then
		return props.cellColumnWidths[cellIndex]
	end
	return props.cellColumnWidth
end

local function renderCells(
	props: MatrixGridProps,
	cells: { React.ReactNode },
	cellAlignTag: string
): { [string]: React.ReactNode }
	local cellChildren: { [string]: React.ReactNode } = {}
	for index, cell in cells do
		local cellColumnWidth = getCellColumnWidth(props, index)
		local cellSize = if cellColumnWidth then UDim2.fromOffset(cellColumnWidth, 0) else nil
		cellChildren[`Cell-{index}`] = React.createElement(View, {
			tag = `col auto-xy {cellAlignTag}`,
			Size = cellSize,
			LayoutOrder = index,
		}, {
			Content = cell,
		})
	end
	return cellChildren
end

local function renderHeaderRow(
	props: MatrixGridProps,
	headerAlignTag: string,
	labelColumnWidth: number,
	showLabelColumn: boolean,
	rowTag: string,
	cellRowTag: string,
	LayoutOrder: number
): React.ReactNode
	local headerCells = Dash.map(props.columnHeaders, function(header, index)
		local cellColumnWidth = getCellColumnWidth(props, index)
		local headerSize = if cellColumnWidth then UDim2.fromOffset(cellColumnWidth, 0) else nil
		return React.createElement(Text, {
			Text = header,
			tag = `auto-xy text-caption-small content-muted {headerAlignTag}`,
			Size = headerSize,
			LayoutOrder = index,
		})
	end)

	if not showLabelColumn then
		return React.createElement(View, {
			tag = `padding-y-small {rowTag}`,
			LayoutOrder = LayoutOrder,
		}, headerCells)
	end

	return React.createElement(View, {
		tag = `padding-y-small {rowTag}`,
		LayoutOrder = LayoutOrder,
	}, {
		Corner = React.createElement(View, {
			tag = "col auto-y",
			Size = UDim2.fromOffset(labelColumnWidth, 0),
			LayoutOrder = 1,
		}, {
			Content = if props.labelColumnHeader ~= nil
				then React.createElement(Text, {
					Text = props.labelColumnHeader,
					tag = `auto-xy text-caption-small content-muted {headerAlignTag}`,
					Size = UDim2.fromOffset(labelColumnWidth, 0),
				})
				else nil,
		}),
		Cells = React.createElement(View, {
			tag = cellRowTag,
			LayoutOrder = 2,
		}, headerCells),
	})
end

local function rowView(props: {
	tag: string,
	LayoutOrder: number,
	row: MatrixGridRow,
	children: { [string]: React.ReactNode },
}): React.ReactNode
	local stroke = if props.row.stroke
		then {
			Color = props.row.stroke.Color,
			Transparency = props.row.stroke.Transparency,
			Thickness = props.row.stroke.Thickness,
		}
		else nil

	return React.createElement(View, {
		tag = props.tag,
		backgroundStyle = props.row.backgroundStyle,
		stroke = stroke,
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function MatrixGrid(props: MatrixGridProps): React.ReactNode
	local showLabelColumn = if props.showLabelColumn == nil then true else props.showLabelColumn
	local showHeader = if props.showHeader == nil then true else props.showHeader
	local labelColumnWidth = props.labelColumnWidth or 80
	local headerTextAlign = props.headerTextAlign or "center"
	local cellAlign = props.cellAlign or "center"
	local rowAlign = props.rowAlign or "center"
	local rowGap = props.rowGap or "large"
	local headerAlignTag = HEADER_ALIGN_TAG[headerTextAlign]
	local cellAlignTag = CELL_ALIGN_TAG[cellAlign]
	local rowAlignTag = ROW_ALIGN_TAG[rowAlign]
	local rowTag: string = `row {rowAlignTag} gap-{rowGap} auto-xy`
	-- An X-only automatic size collapses the automatic height of any descendant, so cells that
	-- size to their own content (wrapped text) would report a single line.
	local cellRowTag: string = `row {rowAlignTag} gap-{rowGap} auto-xy`

	local LayoutOrder = 1
	local children: { [string]: React.ReactNode } = {}

	if showHeader then
		children.HeaderRow =
			renderHeaderRow(props, headerAlignTag, labelColumnWidth, showLabelColumn, rowTag, cellRowTag, LayoutOrder)
		LayoutOrder += 1
	end

	for rowIndex, row in props.rows do
		local rowChildren: { [string]: React.ReactNode } = {}

		if showLabelColumn then
			rowChildren.Label = React.createElement(View, {
				tag = `col size-full-0 auto-y clip {rowAlignTag}`,
				Size = UDim2.fromOffset(labelColumnWidth, 0),
				LayoutOrder = 1,
			}, {
				Content = row.label,
			})
			rowChildren.Cells = React.createElement(View, {
				tag = cellRowTag,
				LayoutOrder = 2,
			}, renderCells(props, row.cells, cellAlignTag))
		else
			for key, cell in renderCells(props, row.cells, cellAlignTag) do
				rowChildren[key] = cell
			end
		end

		local rowViewTag: string
		if row.rowTag then
			rowViewTag = rowTag .. " " .. row.rowTag
		else
			rowViewTag = rowTag
		end

		local paddedRowViewTag = "padding-y-small " .. rowViewTag

		children[`Row-{rowIndex}`] = React.createElement(rowView, {
			tag = paddedRowViewTag,
			LayoutOrder = LayoutOrder,
			row = row,
			children = rowChildren,
		})
		LayoutOrder += 1
	end

	return React.createElement(View, {
		tag = "col auto-xy",
	}, children)
end

return {
	MatrixGrid = MatrixGrid,
	matrixLabel = matrixLabel,
	matrixInfoLabel = matrixInfoLabel,
}
