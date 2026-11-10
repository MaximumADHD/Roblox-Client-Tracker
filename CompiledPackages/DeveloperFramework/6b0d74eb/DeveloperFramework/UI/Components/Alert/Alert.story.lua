local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)
local React = require(Framework.Parent.React)

local Components = Framework.UI.Components
local Alert = require(Components.Alert)
local Slider = require(Components.Slider)
local Pane = require(Components.Pane)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local function AlertStory(props)
	return React.createElement(
		Alert,
		Dash.join({
			Title = "Alert Title",
			Description = "Alert Description",

			PrimaryAction = {
				Text = "Primary Action",
				OnClick = function()
					print("Clicked primary action")
				end,
			},

			OnClose = function()
				print("on close")
			end,
		}, props)
	)
end

return {
	stories = {
		{
			name = "Alert",
			story = React.createElement(AlertStory),
		},

		{
			name = "Warning",
			story = React.createElement(AlertStory, {
				Style = "Warning",
			}),
		},

		{
			name = "Error",
			story = React.createElement(AlertStory, {
				Style = "Error",
			}),
		},

		{
			name = "Success",
			story = React.createElement(AlertStory, {
				Style = "Success",
			}),
		},

		{
			name = "Info",
			story = React.createElement(AlertStory, {
				Style = "Info",
			}),
		},

		{
			name = "Reactive sizing",
			story = function()
				local layoutOrderIterator = LayoutOrderIterator.new()
				local width, setWidth = React.useState(500)

				return React.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,

					Layout = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}, {
					Slider = React.createElement(Slider, {
						Min = 150,
						Max = 500,
						Value = width,
						Size = UDim2.fromOffset(250, 32),
						OnValueChanged = setWidth,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}),

					AlertPane = React.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.fromOffset(width, 0),
					}, {
						Alert = React.createElement(AlertStory, {
							Title = "My very long alert title",
							ShortTitle = "Short title",

							Description = "My very very very very very long alert description",
						}),
					}),
				})
			end,
		},
	},
}
