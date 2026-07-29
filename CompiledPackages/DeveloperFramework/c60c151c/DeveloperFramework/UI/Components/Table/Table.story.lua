local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)
local Table = require(Framework.UI.Components.Table)
local Tooltip = require(Framework.UI.Components.Tooltip)
local TextLabel = require(Framework.UI.Components.TextLabel)

local Dash = require(Framework.Parent.Dash)
local copy = Dash.copy
local join = Dash.join
local map = Dash.map

local insert = table.insert

local scrollRows = {}
for i = 1, 1000 do
	insert(scrollRows, {
		Id = tostring(i),
		Name = "Row " .. i,
		Count = math.floor(math.random() * 100),
		Size = (math.floor(math.random() * 100) * 10) .. "px",
	})
end

local TableStory = Roact.PureComponent:extend("TableStory")

function TableStory:init()
	self.state = {
		sizes = self.props.InitialSizes,
	}
	self.onSizesChange = function(sizes: { UDim })
		self:setState({
			sizes = sizes,
		})
	end
end

function TableStory:render()
	local props = self.props
	local state = self.state
	local columns = map(props.Columns, function(column, index: number)
		return join(column, {
			Width = state.sizes[index],
		})
	end)
	local rows = copy(props.Rows)
	return Roact.createElement(
		Table,
		join(props, {
			OnColumnSizesChange = self.onSizesChange,
			Rows = rows,
			Columns = columns,
			GetRowId = function(row)
				return row.Id
			end,
		})
	)
end

local columns = {
	{
		Name = "Name",
	},
	{
		Name = "Count",
	},
	{
		Name = "Size",
	},
}
local rows = {
	{
		Name = "Left",
		Count = 1,
		Size = "50px",
		Id = "1",
	},
	{
		Name = "Middle",
		Count = 10,
		Size = "80px",
		Id = "2",
	},
	{
		Name = "Right",
		Count = 3,
		Size = "20px",
		Id = "3",
	},
}
local responsiveRows = {
	{
		Name = "Left",
		Count = 1,
		Size = "50px",
		Id = "1",
	},
	{
		Name = "Middle",
		Count = 10,
		Size = "80px",
		Id = "2",
	},
	{
		Name = "This cell/row will have a larger row height because it has more characters",
		Count = 3,
		Size = "20px",
		Id = "3",
	},
}
local function getRowHeight(row, rowHeight)
	local charsPerLine = 20
	local lineHeight = 20
	local addedLines = (math.ceil(string.len(row.Name) / charsPerLine) - 1)
	local responsiveRowHeight = if addedLines > 0 then rowHeight + addedLines * lineHeight else rowHeight
	return responsiveRowHeight
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

return {
	stories = {
		{
			name = "Fixed size",
			story = Roact.createElement(TableStory, {
				UseScale = true,
				ClampSize = true,
				InitialSizes = {
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
				},
				Size = UDim2.new(1, 0, 0, 200),
				Columns = columns,
				Rows = rows,
			}),
		},
		{
			name = "With footer",
			story = Roact.createElement(TableStory, {
				UseScale = true,
				ClampSize = true,
				Size = UDim2.new(1, 0, 0, 200),
				InitialSizes = {
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
				},
				Footer = Roact.createElement(Pane, {
					Padding = 5,
					Layout = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}, {
					Label = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "3 items",
					}),
				}),
				Columns = columns,
				Rows = rows,
			}),
		},
		{
			name = "With scroll",
			story = Roact.createElement(TableStory, {
				Scroll = true,
				UseScale = true,
				ClampSize = true,
				Size = UDim2.new(1, 0, 0, 200),
				InitialSizes = {
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
				},
				Footer = Roact.createElement(Pane, {
					Padding = 5,
					Layout = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}, {
					Label = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "1000 items",
					}),
				}),
				Columns = columns,
				Rows = scrollRows,
			}),
		},
		{
			name = "With GetRowHeight",
			story = Roact.createElement(TableStory, {
				Size = UDim2.new(1, 0, 0, 200),
				InitialSizes = {
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
					UDim.new(1 / 3, 0),
				},
				Columns = columns,
				CellComponent = WrappedTableCell,
				Rows = responsiveRows,
				RowHeight = 20,
				GetRowHeight = getRowHeight,
			}),
		},
	},
}
