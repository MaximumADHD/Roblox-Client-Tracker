local Roact = require(game:GetService("CorePackages").Roact)
local LinkText = require(script.Parent.Parent.Components.LinkText)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({
				LinkTextFont = Enum.Font.Arial,
				LinkTextTextSize = 10,
			}),
		}, {
			Content = Roact.createElement(LinkText, {
				Text = "Text",
				OnActivated = function() end,
				LayoutOrder = 4,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
