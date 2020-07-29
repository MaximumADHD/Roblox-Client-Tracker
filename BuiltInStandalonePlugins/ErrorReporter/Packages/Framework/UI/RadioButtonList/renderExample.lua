local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Container = UI.Container
local RadioButtonList = UI.RadioButtonList

return function()
	return Roact.createElement(Container, {
		Size = UDim2.fromOffset(100, 100),
	}, {
		Decoration = Roact.createElement(RadioButtonList, {
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
			OnClick = function() end,
			SelectedKey = "KEY1",
		})
	})
end
