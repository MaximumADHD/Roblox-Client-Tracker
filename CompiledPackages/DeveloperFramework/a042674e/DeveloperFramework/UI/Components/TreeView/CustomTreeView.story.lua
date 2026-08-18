local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)
local copy = Dash.copy

local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Button = UI.Button
local Pane = UI.Pane
local TextLabel = UI.TextLabel
local TreeView = UI.TreeView

local CustomTreeView = Roact.PureComponent:extend(script.Parent.Name .. "CustomTreeView")

function CustomTreeView:init()
	self.state = {
		Expansion = {},
		Items = {
			{
				name = "Workspace",
				children = {
					{
						name = "Ocean",
						children = {
							{
								name = "Billy The Fish",
							},
						},
					},
				},
			},
			{
				name = "ReplicatedStorage",
				children = {
					{
						name = "WeatherSystem",
					},
					{
						name = "CloudSystem",
						children = {
							{
								name = "Cheeky Cumulus",
							},
						},
					},
				},
			},
			{
				name = "ServerStorage",
				children = {
					{
						name = "Secret Base",
						children = {
							{
								name = "Obsidian Door",
							},
						},
					},
				},
			},
		},
	}
	self.onToggle = function(row)
		local item = row.item
		local newExpansion = copy(self.state.Expansion)
		newExpansion[item] = not newExpansion[item]
		self:setState({
			Expansion = newExpansion,
		})
	end
	self.getRowProps = function(row, index: number, position: UDim2, size: UDim2)
		local item = row.item
		return {
			Expanded = self.state.Expansion[item],
			OnToggle = self.onToggle,
			Key = index,
			Position = position,
			Row = row,
			Size = size,
		}
	end
end

local CustomRow = Roact.PureComponent:extend("CustomRow")
function CustomRow:init()
	self.onToggle = function()
		local props = self.props
		props.OnToggle(props.Row)
	end
end
function CustomRow:render()
	local props = self.props
	local row = props.Row
	local item = row.item
	local isExpanded = props.Expanded
	local hasChildren = item.children and #item.children > 0
	local indent = row.depth * 24
	return Roact.createElement(Pane, {
		Size = props.Size,
		Position = props.Position,
		Padding = {
			Left = indent,
		},
	}, {
		Toggle = hasChildren and Roact.createElement(Button, {
			Text = isExpanded and "-" or "+",
			Position = UDim2.new(0, 5 + indent, 0, 4),
			Size = UDim2.new(0, 24, 0, 24),
			OnClick = self.onToggle,
		}) or nil,
		Label = Roact.createElement(TextLabel, {
			Text = item.name,
			Size = UDim2.new(1, -40, 1, 0),
			Position = UDim2.new(0, 40 + indent, 0, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

function CustomTreeView:render()
	return Roact.createElement(TreeView, {
		Size = UDim2.new(0, 240, 0, 240),
		Expansion = self.state.Expansion,
		RootItems = self.state.Items,
		Style = "BorderBox",
		RowComponent = CustomRow,
		RowHeight = 32,
		GetRowProps = self.getRowProps,
		GetChildren = function(item)
			return item.children or {}
		end,
	})
end

return {
	stories = {
		{
			name = "Example",
			story = CustomTreeView,
		},
	},
}
