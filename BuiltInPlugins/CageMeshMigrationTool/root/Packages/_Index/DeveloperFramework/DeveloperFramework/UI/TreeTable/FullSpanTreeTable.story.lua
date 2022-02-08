local Framework = script.Parent.Parent.Parent

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local TreeTable = UI.TreeTable

local ExampleTreeTable = Roact.PureComponent:extend(script.Parent.Name .. "ExampleTreeTable")

function ExampleTreeTable:init()
	self.state = {
		Expansion = {},
		Selection = {},
		Items = {
			{
				name = "Workspace.AbsurdlyLongFIlePath1.AbsurdlyLongFIlePath2.AbsurdlyLongFIlePath3.AbsurdlyLongFIlePath4.Script",
				children = {
					{
						name = "Ocean",
						Col1 = 53,
						Col2 = 54,
						Col3 = 55,
						Col4 = 56,
						Col5 = 57,
						children = {
							{
								name = "Billy The Fish",
								Col1 = 12,
								Col2 = 13,
								Col3 = 14,
								Col4 = 15,
								Col5 = 16,
							}
						}
					}
				}
			},
			{
				name = "ReplicatedStorage",
				children = {
					{
						name = "WeatherSystem",
						Col1 = 'a',
						Col2 = 'b',
						Col3 = 'c',
						Col4 = 'd',
						Col5 = 'e', 
						children = {
							Col1 = 193,
							Col2 = 194,
							Col3 = 195,
							Col4 = 196,
							Col5 = 197,
							LeftIcon = {
								Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
								Size = UDim2.new(0, 14, 0, 14),
							},
						},
					},
					{
						name = "CloudSystem",
						Col1 = 9001,
						Col2 = 9002,
						Col3 = 9003,
						Col4 = 9004,
						Col5 = 9005,
						children = {
							{
								name = "Cheeky Cumulus",
								Col1 = 'e',
								Col2 = 'f',
								Col3 = 'g',
								Col4 = 'h',
								Col5 = 'i',
								children = {
									Col1 = -1,
									Col2 = -2,
									Col3 = -3,
									Col4 = -4,
									Col5 = -5,
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
				children = {
					{
						name = "Secret Base",
						Col1 = 212,
						Col2 = 213,
						Col3 = 214,
						Col4 = 215,
						Col5 = 216,
						children = {
							{
								name = "Obsidian Door",
								Col1 = 120,
								Col2 = 121,
								Col3 = 122,
								Col4 = 123,
								Col5 = 124,
							}
						}
					}
				 }
			}
		}
	}
end

function ExampleTreeTable:render()
	return Roact.createElement(TreeTable, {
		Size = UDim2.new(1, 0, 0, 240),
		Columns = {
			{
				Name = "Name",
				Key = "name",
			},
			{
				Name = "Col1",
				Key = "Col1",
			},
			{
				Name = "Col2",
				Key = "Col2",
			},
			{
				Name = "Col3",
				Key = "Col3",
			},
			{
				Name = "Col4",
				Key = "Col4",
			},
			{
				Name = "Col5",
				Key = "Col5",
			}
		},
		OnExpansionChange = function(newExpansion)
			self:setState({
				Expansion = join(self.state.Expansion, newExpansion)
			})
		end,
		OnSelectionChange = function(newSelection)
			self:setState({
				Selection = newSelection
			})
		end,
		Expansion = self.state.Expansion,
		RootItems = self.state.Items,
		GetChildren = function(item)
			return item.children or {}
		end,
		Scroll = true,
		FullSpan = true,
	})
end

return ExampleTreeTable
