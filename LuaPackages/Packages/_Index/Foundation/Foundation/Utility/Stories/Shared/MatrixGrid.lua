local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

export type MatrixGridRow = {
	label: React.ReactNode?,
	cells: { React.ReactNode },
}

export type MatrixGridProps = {
	labelColumnWidth: number?,
	showLabelColumn: boolean?,
	showHeader: boolean?,
	columnHeaders: { string },
	cellColumnWidth: number?,
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

local function MatrixGrid(props: MatrixGridProps): React.ReactNode
	local showLabelColumn = if props.showLabelColumn == nil then true else props.showLabelColumn
	local showHeader = if props.showHeader == nil then true else props.showHeader
	local labelColumnWidth = props.labelColumnWidth or 80
	local headerTextAlign = props.headerTextAlign or "center"
	local cellAlign = props.cellAlign or "center"
	local rowGap = props.rowGap or "large"
	local headerAlignTag = if headerTextAlign == "left" then "text-align-x-left" else "text-align-x-center"
	local cellAlignTag = if cellAlign == "left" then "align-x-left" else "align-x-center"
	local rowTag = `row align-y-center gap-{rowGap} auto-xy`
	local cellRowTag = `row align-y-center gap-{rowGap} auto-x`

	local layoutOrder = 1
	local children: { [string]: React.ReactNode } = {}

	local function renderCells(cells: { React.ReactNode }): { [string]: React.ReactNode }
		local cellChildren: { [string]: React.ReactNode } = {}
		for index, cell in cells do
			local cellSize = if props.cellColumnWidth then UDim2.fromOffset(props.cellColumnWidth, 0) else nil
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

	if showHeader then
		local headerCells = Dash.map(props.columnHeaders, function(header, index)
			local headerSize = if props.cellColumnWidth then UDim2.fromOffset(props.cellColumnWidth, 0) else nil
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
				LayoutOrder = layoutOrder,
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
				LayoutOrder = layoutOrder,
			}, headerCells)
		end
		layoutOrder += 1
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
			}, renderCells(row.cells))
		else
			for key, cell in renderCells(row.cells) do
				rowChildren[key] = cell
			end
		end

		children[`Row-{rowIndex}`] = React.createElement(View, {
			tag = `padding-y-small {rowTag}`,
			LayoutOrder = layoutOrder,
		}, rowChildren)
		layoutOrder += 1
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
