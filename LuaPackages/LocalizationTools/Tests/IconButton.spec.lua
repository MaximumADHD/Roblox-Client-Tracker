local Roact = require(game:GetService("CorePackages").Roact)
local IconButton = require(script.Parent.Parent.Components.IconButton)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(IconButton, {
				ButtonText = "ButtonText",
				ButtonImage = "",
				Activated = true,
				OnActivated = function() end,
				LayoutOrder = 3,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
