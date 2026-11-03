local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local PaginatedTable = require(Framework.UI.Components.PaginatedTable)

local Dash = require(Framework.Parent.Dash)
local slice = Dash.slice

local insert = table.insert
local sort = table.sort

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local Tooltip = require(UI.Components.Tooltip)
local TextLabel = require(UI.Components.TextLabel)

local ControlledTable = Roact.PureComponent:extend("ControlledTable")

local exampleData = {}
for i = 1, 23 do
	insert(exampleData, {
		Name = "Row " .. i,
		Count = math.floor(math.random() * 100),
		Size = (math.floor(math.random() * 100) * 10) .. "px",
	})
end
local exampleDataResponsive = {}
for i = 1, 23 do
	local name = "Row " .. i
	if i % 4 == 0 then
		name = "This cell/row will have a larger row height because it has more characters"
	end
	insert(exampleDataResponsive, {
		Name = name,
		Count = math.floor(math.random() * 100),
		Size = (math.floor(math.random() * 100) * 10) .. "px",
	})
end

local function WrappedTableCell(props)
	local value: any = props.Value
	local style = props.Style
	local width = props.Width or UDim.new(1 / #props.Columns, 0)
	local backgroundColor = if props.Emphasis then style.BackgroundOdd else style.BackgroundEven
	local stringValue: string
	if typeof(value) == "number" and math.floor(value) ~= value then
		-- Round to 3dp for readability
		stringValue = ("%.3f"):format(value)
	else
		stringValue = tostring(value)
	end
	local tooltipText = props.Tooltip or stringValue
	local hasTooltip = tooltipText ~= nil and tooltipText ~= ""
	return Roact.createElement(Pane, {
		LayoutOrder = props.ColumnIndex,
		Padding = {
			Top = 1,
			Bottom = 1,
			Left = 5,
			Right = 5,
		},
		Style = "Box",
		BackgroundColor3 = backgroundColor,
		BorderSizePixel = 1,
		BorderColor3 = style.Border,
		Size = UDim2.new(width.Scale, width.Offset, 1, 0),
		ClipsDescendants = true,
	}, {
		Text = Roact.createElement(TextLabel, {
			Text = stringValue,
			TextWrapped = true,
			Size = UDim2.fromScale(1, 1),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Tooltip = hasTooltip and Roact.createElement(Tooltip, {
			MaxWidth = style.Tooltip.MaxWidth,
			Text = tooltipText,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

function ControlledTable:init()
	self.state = {
		sortIndex = nil,
		sortOrder = nil,
		pageIndex = 1,
		pageSize = 5,
		rows = self:getPageRows(1, 5, self.props.UseGetRowHeight),
		selectedRow = nil,
		responsive = self.props.UseGetRowHeight,
	}
	self.onSortChange = function(index: number, order: Enum.SortDirection)
		local columns = { "Name", "Count", "Size" }
		sort(exampleData, function(a, b)
			local column = columns[index]
			if order == Enum.SortDirection.Descending then
				return a[column] < b[column]
			else
				return a[column] > b[column]
			end
		end)
		self:setState({
			sortIndex = index,
			sortOrder = order,
			rows = self:getPageRows(self.state.pageIndex, self.state.pageSize, self.state.responsive),
		})
	end
	self.onPageChange = function(pageIndex: number)
		self:setState({
			pageIndex = pageIndex,
			rows = self:getPageRows(pageIndex, self.state.pageSize, self.state.responsive),
		})
	end
	self.onPageSizeChange = function(pageSize: number)
		self:setState({
			pageSize = pageSize,
			rows = self:getPageRows(self.state.pageIndex, pageSize, self.state.responsive),
		})
	end
	self.onSelectRow = function(_row, index: number)
		self:setState({
			selectedRow = index + (self.state.pageIndex - 1) * self.state.pageSize,
		})
	end

	self.getRowHeight = function(row, rowHeight)
		local charsPerLine = 20
		local lineHeight = 20
		local addedLines = (math.ceil(string.len(row.Name) / charsPerLine) - 1)
		local responsiveRowHeight = if addedLines > 0 then rowHeight + addedLines * lineHeight else rowHeight
		return responsiveRowHeight
	end
end

function ControlledTable:getPageRows(pageIndex: number, pageSize: number, responsive: boolean)
	local start = (pageIndex - 1) * pageSize + 1
	return if responsive
		then slice(exampleDataResponsive, start, start + pageSize - 1)
		else slice(exampleData, start, start + pageSize - 1)
end

function ControlledTable:render()
	local state = self.state
	local props = self.props
	local selectedRow = nil
	if state.selectedRow then
		selectedRow = state.selectedRow - (self.state.pageIndex - 1) * self.state.pageSize
	end
	if props.UseGetRowHeight then
		self:setState({
			responsive = true,
		})
		return Roact.createElement(PaginatedTable, {
			AutomaticSize = Enum.AutomaticSize.Y,
			SortIndex = state.sortIndex,
			SortOrder = state.sortOrder,
			PageIndex = state.pageIndex,
			PageSize = state.pageSize,
			PageCount = math.ceil(#exampleDataResponsive / state.pageSize),
			OnPageChange = self.onPageChange,
			OnSortChange = self.onSortChange,
			SelectedRow = selectedRow,
			OnSelectRow = self.onSelectRow,
			Columns = {
				{
					Name = "Name",
				},
				{
					Name = "Count",
				},
				{
					Name = "Size",
				},
			},
			Rows = state.rows,
			GetRowHeight = self.getRowHeight,
			CellComponent = WrappedTableCell,
		})
	else
		return Roact.createElement(PaginatedTable, {
			Size = UDim2.new(1, 0, 0, 200),
			SortIndex = state.sortIndex,
			SortOrder = state.sortOrder,
			PageIndex = state.pageIndex,
			PageSize = state.pageSize,
			PageCount = math.ceil(#exampleData / state.pageSize),
			OnPageSizeChange = self.onPageSizeChange,
			OnPageChange = self.onPageChange,
			OnSortChange = self.onSortChange,
			SelectedRow = selectedRow,
			OnSelectRow = self.onSelectRow,
			Columns = {
				{
					Name = "Name",
				},
				{
					Name = "Count",
				},
				{
					Name = "Size",
				},
			},
			Rows = state.rows,
		})
	end
end

return {
	stories = {
		{
			name = "Pagination",
			story = Roact.createElement(ControlledTable),
		},
		{
			name = "Pagination with GetRowHeight",
			story = Roact.createElement(ControlledTable, {
				UseGetRowHeight = true,
			}),
		},
	},
}
