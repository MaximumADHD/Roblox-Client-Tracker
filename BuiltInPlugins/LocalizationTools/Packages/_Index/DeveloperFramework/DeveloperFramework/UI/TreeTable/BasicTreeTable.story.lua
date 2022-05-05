local Framework = script.Parent.Parent.Parent

local Dash = require(Framework.packages.Dash)
local join = Dash.join
local map = Dash.map

local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local TreeTable = UI.TreeTable

local ExampleTreeTable = Roact.PureComponent:extend(script.Parent.Name .. "ExampleTreeTable")

local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")

local hasTableColumnResizeFFlags = FFlagDevFrameworkSplitPane and FFlagDevFrameworkTableColumnResize

local DEFAULT_COLUMNS = {
	{
		Name = "Name",
		Key = "name",
	},
	{
		Name = "Value",
		Key = "value",
	}
}

function ExampleTreeTable:init()
	self.state = {
		Sizes = {
			UDim.new(0.5, 0),
			UDim.new(0.5, 0),
		},
		Expansion = {},
		Items = {
			{
				name = "Workspace",
				value = {
					Value = 12,
					LeftIcon = {
						Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
						Size = UDim2.new(0, 14, 0, 14),
					},
				},
				children = {
					{
						name = "Ocean",
						value = 53,
						children = {
							{
								name = "Billy The Fish",
								value = 12,
							}
						}
					}
				}
			},
			{
				name = "ReplicatedStorage",
				value = 18,
				children = {
					{
						name = "WeatherSystem",
						value = {
							Value = 193,
							LeftIcon = {
								Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
								Size = UDim2.new(0, 14, 0, 14),
							},
						},
					},
					{
						name = "CloudSystem",
						value = 9001,
						children = {
							{
								name = "Cheeky Cumulus",
								value = {
									Value = 200,
									LeftIcon = {
										Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
										Size = UDim2.new(0, 14, 0, 14),
									},
								},
							}
						}
					},
				}
			},
			{
				name = "ServerStorage",
				value = 30,
				children = {
					{
						name = "Secret Base",
						value = 212,
						children = {
							{
								name = "Obsidian Door",
								value = 120,
							}
						}
					}
				 }
			}
		}
	}
	self.onSizesChange = function(sizes: {UDim})
		self:setState({
			Sizes = sizes
		})
	end
end

function ExampleTreeTable:render()
	local columns = map(DEFAULT_COLUMNS, function(column, index: number)
		return join(column, {
			Width = self.state.Sizes[index]
		})
	end)
	
	local clampSize = if hasTableColumnResizeFFlags then true else nil
	local useScale = if hasTableColumnResizeFFlags then true else nil
	local onColumnSizesChange = if hasTableColumnResizeFFlags then self.onSizesChange else nil
	
	return Roact.createElement(TreeTable, {
		Size = UDim2.new(1, 0, 0, 240),
		ClampSize = clampSize,
		UseScale = useScale,
		Columns = columns,
		OnExpansionChange = function(newExpansion)
			self:setState({
				Expansion = join(self.state.Expansion, newExpansion)
			})
		end,
		OnColumnSizesChange = onColumnSizesChange,
		Expansion = self.state.Expansion,
		RootItems = self.state.Items,
		GetChildren = function(item)
			return item.children or {}
		end,
		Scroll = true,
	})
end

return ExampleTreeTable