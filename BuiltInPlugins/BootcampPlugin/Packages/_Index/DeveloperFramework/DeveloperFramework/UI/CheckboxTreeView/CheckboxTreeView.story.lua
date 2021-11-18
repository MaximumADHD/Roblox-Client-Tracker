local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local UI = require(Framework.UI)
local CheckboxTreeView = UI.CheckboxTreeView

local ExampleCheckboxTreeView = Roact.PureComponent:extend(script.Parent.Name .. "ExampleCheckboxTreeView")

function ExampleCheckboxTreeView:init()
	self.state = {
		checked = {},
		items = {
			{
				text = "Workspace",
				children = {
					{
						text = "Ocean",
						children = {
							{
								text = "Billy The Fish"
							},
						}
					}
				},
				icon = {
					Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
					Size = UDim2.new(0, 14, 0, 14),
				}
			},
			{
				text = "ReplicatedStorage",
				children = {
					{
						text = "WeatherSystem",
					},
					{
						text = "CloudSystem",
						children = {
							{
								text = "Cheeky Cumulus"
							},
						}
					},
				}
			},
			{
				text = "ServerStorage",
				children = {
					{
						text = "Secret Base - The access code to enter the secret base is actually incredibly long - enough to make the tree view scroll",
						icon = {
							Image = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png",
							Size = UDim2.new(0, 14, 0, 14),
						},
						children = {
							{
								text = "Obsidian Door"
							},
						}
					}
				 }
			}
		}
	}
end

function ExampleCheckboxTreeView:render()
	return Roact.createElement(CheckboxTreeView, {
		Size = UDim2.new(0, 240, 0, 240),
		RootItems = self.state.items,
		Checked = self.state.checked,
		OnCheck = function(checked)
			self:setState({
				checked = join(self.state.checked, checked)
			})
		end,
		Style = "BorderBox",
	})
end

return ExampleCheckboxTreeView
