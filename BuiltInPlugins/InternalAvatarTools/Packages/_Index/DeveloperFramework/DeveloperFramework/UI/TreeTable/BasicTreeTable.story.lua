local Framework = script.Parent.Parent.Parent

local Dash = require(Framework.packages.Dash)
local join = Dash.join
local map = Dash.map

local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local TreeTable = UI.TreeTable

local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")
local hasTableColumnResizeFFlags = FFlagDevFrameworkTableColumnResize

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

local function getItems()
	return {
		{
			name = "Workspace",
			value = {
				Value = "12 plus extralongtext lorem ipsum asdfghjkl asdfghjkl asdfghjkl asdfghjkl asdfghjkhjkl sadfrghjkm,l asdefrgthjk dfgthjk dfgthjk dfgthyjk dfl sadfrghjkm,l asdefrgthjk dfgthjk dfgthjk dfgthyjk dfghjk fdghjk dfghjk fdghjk",
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
end

local function createStory(sizes, props)

	local Story = Roact.PureComponent:extend("Story")

	function Story:init()
		self.state = {
			Sizes = sizes,
			Expansion = {},
			Items = getItems(),
		}
		self.onSizesChange = function(sizes: {UDim})
			self:setState({
				Sizes = sizes
			})
		end
	end

	function Story:render()
		local props = self.props
		local columns = map(DEFAULT_COLUMNS, function(column, index: number)
			return join(column, {
				Width = self.state.Sizes[index]
			})
		end)
		
		local onColumnSizesChange = if hasTableColumnResizeFFlags then self.onSizesChange else nil
		
		return Roact.createElement(TreeTable, join({
			Size = UDim2.new(1, 0, 0, 240),
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
		}, props))
	end

	return Story
end

return {
	stories = {
		{
			name = "Clamped",
			summary = "Columns can't extend outside table bounds, and resize proportionally when the outer size changes",
			story = createStory({
				UDim.new(0.5, 0),
				UDim.new(0.5, 0),
			}, {
				ClampSize = if hasTableColumnResizeFFlags then true else nil,
				UseScale = if hasTableColumnResizeFFlags then true else nil,
			}),
		}, {
			name = "Clamped with deficit",
			summary = "Columns can't extend outside table bounds, and only the last column resizes when the outer size changes",
			story = createStory({
				UDim.new(0, 100),
				UDim.new(1, -100),
			}, {
				ClampSize = true,
				UseDeficit = true,
			}),
		}, {
			name = "Expanding",
			summary = "Columns can extend outside the table bounds, producing a horizontal scroll, and do not resize when the outer size changes",
			story = createStory({
				UDim.new(0, 100),
				UDim.new(0, 400),
			}, {}),
		}
	}
}
