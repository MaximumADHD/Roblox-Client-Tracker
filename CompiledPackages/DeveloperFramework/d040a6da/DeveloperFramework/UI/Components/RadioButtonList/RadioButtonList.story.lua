local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local RadioButtonList = require(Framework.UI.Components.RadioButtonList)

return {
	stories = {
		{
			name = "Vertical List",
			story = function()
				return Roact.createElement(RadioButtonList, {
					Buttons = {
						{
							Key = "KEY1",
							Text = "option text 1",
						},
						{
							Key = "KEY2",
							Text = "option text 2",
							Disabled = false,
						},
						{
							Key = "KEY3",
							Text = "option text 3",
							Disabled = false,
						},
						{
							Key = "KEY4",
							Text = "disabled text",
							Disabled = true,
						},
					},
					FillDirection = Enum.FillDirection.Vertical,
					SelectedKey = "KEY1",
				})
			end,
		},
		{
			name = "Horizontal List",
			story = function()
				return Roact.createElement(RadioButtonList, {
					Buttons = {
						{
							Key = "KEY1",
							Text = "option text 1",
							Disabled = false,
						},
						{
							Key = "KEY2",
							Text = "option text 2",
							Disabled = false,
						},
						{
							Key = "KEY4",
							Text = "disabled text",
							Disabled = true,
						},
					},
					FillDirection = Enum.FillDirection.Horizontal,
					SelectedKey = "KEY2",
				})
			end,
		},
	},
}
