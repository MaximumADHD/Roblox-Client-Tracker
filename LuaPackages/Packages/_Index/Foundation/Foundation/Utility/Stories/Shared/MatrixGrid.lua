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
	showLabelColumn: boolean?,
	showHeader: boolean?,
	columnHeaders: { string },
	cellColumnWidth: number?,
	cellColumnWidths: { number }?,
	rows: { MatrixGridRow },
	headerTextAlign: ("left" | "center")?,
	cellAlign: ("left" | "center")?,
	rowGap: ("large" | "xxlarge")?,
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

local function MatrixGrid(props: MatrixGridProps): React.ReactNode
	local showLabelColumn = if props.showLabelColumn == nil then true else props.showLabelColumn
	local showHeader = if props.showHeader == nil then true else props.showHeader
	local labelColumnWidth = props.labelColumnWidth or 80
	local headerTextAlign = props.headerTextAlign or "center"
	local cellAlign = props.cellAlign or "center"
	local rowGap = props.rowGap or "large"
	local headerAlignTag = if headerTextAlign == "left" then "text-align-x-left" else "text-align-x-center"
	local cellAlignTag = if cellAlign == "left" then "align-x-left" else "align-x-center"
	local rowTag: string = "row align-y-center gap-" .. rowGap .. " auto-xy"
	local cellRowTag: string = "row align-y-center gap-" .. rowGap .. " auto-x"

	local LayoutOrder = 1
	local children: { [string]: React.ReactNode } = {}

	if showHeader then
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

		if showLabelColumn then
			children.HeaderRow = React.createElement(View, {
				tag = `padding-y-small {rowTag}`,
				LayoutOrder = LayoutOrder,
			}, {
				Corner = React.createElement(View, {
					Size = UDim2.fromOffset(labelColumnWidth, 0),
					LayoutOrder = 1,
				}),
				Cells = React.createElement(View, {
					tag = cellRowTag,
					LayoutOrder = 2,
				}, headerCells),
			})
		else
			children.HeaderRow = React.createElement(View, {
				tag = `padding-y-small {rowTag}`,
				LayoutOrder = LayoutOrder,
			}, headerCells)
		end
		LayoutOrder += 1
	end

	for rowIndex, row in props.rows do
		local rowChildren: { [string]: React.ReactNode } = {}

		if showLabelColumn then
			rowChildren.Label = React.createElement(View, {
				tag = "col align-y-center size-full-0 auto-y clip",
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

		if row.backgroundStyle and row.stroke then
			children[`Row-{rowIndex}`] = React.createElement(View, {
				tag = paddedRowViewTag,
				backgroundStyle = row.backgroundStyle,
				stroke = {
					Color = row.stroke.Color,
					Transparency = row.stroke.Transparency,
					Thickness = row.stroke.Thickness,
				},
				LayoutOrder = LayoutOrder,
			}, rowChildren)
		elseif row.backgroundStyle then
			children[`Row-{rowIndex}`] = React.createElement(View, {
				tag = paddedRowViewTag,
				backgroundStyle = row.backgroundStyle,
				LayoutOrder = LayoutOrder,
			}, rowChildren)
		elseif row.stroke then
			children[`Row-{rowIndex}`] = React.createElement(View, {
				tag = paddedRowViewTag,
				stroke = {
					Color = row.stroke.Color,
					Transparency = row.stroke.Transparency,
					Thickness = row.stroke.Thickness,
				},
				LayoutOrder = LayoutOrder,
			}, rowChildren)
		else
			children[`Row-{rowIndex}`] = React.createElement(View, {
				tag = paddedRowViewTag,
				LayoutOrder = LayoutOrder,
			}, rowChildren)
		end
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
