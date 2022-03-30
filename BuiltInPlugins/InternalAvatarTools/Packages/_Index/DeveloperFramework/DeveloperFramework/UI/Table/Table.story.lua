local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Pane = UI.Pane
local Table = UI.Table
local TextLabel = UI.Decoration.TextLabel

local Dash = require(Framework.packages.Dash)
local copy = Dash.copy
local join = Dash.join
local map = Dash.map

local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")

local insert = table.insert

local scrollRows = {}
for i = 1, 1000 do
	insert(scrollRows, {
		Name = "Row " .. i,
		Count = math.floor(math.random() * 100),
		Size = (math.floor(math.random() * 100) * 10) .. "px",
	})
end

local TableStory

local hasTableColumnResizeFFlags = FFlagDevFrameworkSplitPane and FFlagDevFrameworkTableColumnResize

if hasTableColumnResizeFFlags then
	TableStory = Roact.PureComponent:extend("TableStory")

	function TableStory:init()
		self.state = {
			sizes = self.props.InitialSizes,
		}
		self.onSizesChange = function(sizes: {UDim})
			self:setState({
				sizes = sizes
			})
		end
	end

	function TableStory:render()
		local props = self.props
		local state = self.state
		local columns = map(props.Columns, function(column, index: number)
			return join(column, {
				Width = state.sizes[index]
			})
		end)
		local rows = copy(props.Rows)
		return Roact.createElement(Table, join(props, {
			OnColumnSizesChange = self.onSizesChange,
			Rows = rows,
			Columns = columns,
		}))
	end
end

local columns = {
	{
		Name = "Name",
	}, {
		Name = "Count",
	}, {
		Name = "Size",
	},
}
local rows = {
	{
		Name = "Left",
		Count = 1,
		Size = "50px",
	},
	{
		Name = "Middle",
		Count = 10,
		Size = "80px",
	},
	{
		Name = "Right",
		Count = 3,
		Size = "20px",
	}
}

return {
	stories = {
		{
			name = "Fixed size",
			story = Roact.createElement(if hasTableColumnResizeFFlags then TableStory else Table, {
				UseScale = if hasTableColumnResizeFFlags then true else nil,
				ClampSize = if hasTableColumnResizeFFlags then true else nil,
				InitialSizes = if hasTableColumnResizeFFlags then {
					UDim.new(1/3, 0),
					UDim.new(1/3, 0),
					UDim.new(1/3, 0),
				} else nil,
				Size = UDim2.new(1, 0, 0, 200),
				Columns = columns,
				Rows = rows,
			})
		},
		{
			name = "With footer",
			story = Roact.createElement(if hasTableColumnResizeFFlags then TableStory else Table, {
				UseScale = if hasTableColumnResizeFFlags then true else nil,
				ClampSize = if hasTableColumnResizeFFlags then true else nil,
				Size = UDim2.new(1, 0, 0, 200),
				InitialSizes = if hasTableColumnResizeFFlags then {
					UDim.new(1/3, 0),
					UDim.new(1/3, 0),
					UDim.new(1/3, 0),
				} else nil,
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
			})
		},
		{
			name = "With scroll",
			story = Roact.createElement(if hasTableColumnResizeFFlags then TableStory else Table, {
				Scroll = true,
				Size = UDim2.new(1, 0, 0, 200),
				InitialSizes = if hasTableColumnResizeFFlags then {
					UDim.new(1/3, 0),
					UDim.new(1/3, 0),
					UDim.new(1/3, 0),
				} else nil,
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
			})
		},
	}
}
