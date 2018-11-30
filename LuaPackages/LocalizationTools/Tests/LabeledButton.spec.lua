local Roact = require(game:GetService("CorePackages").Roact)
local LabeledButton = require(script.Parent.Parent.Components.LabeledButton)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(LabeledButton, {
				LayoutOrder = 3,
				ButtonWidth = 60,
				Disabled = false,
				LabelText = "My Button: ",
				ButtonText = "My Button",
				Padding = 5,
				OnClick = function() end,
				Height = 10,
				LabelWidth = 40,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
