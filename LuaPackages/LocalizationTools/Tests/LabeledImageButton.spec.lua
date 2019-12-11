local Roact = require(game:GetService("CorePackages").Roact)
local LabeledImageButton = require(script.Parent.Parent.Components.LabeledImageButton)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(LabeledImageButton, {
				LabelText = "LabelText",
				ButtonText = "ButtonText",
				ButtonImage = "",
				OnActivated = function() end,
				LayoutOrder = 3,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
