local Roact = require(game:GetService("CorePackages").Roact)
local LabeledCheckbox = require(script.Parent.Parent.Components.LabeledCheckbox)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(LabeledCheckbox, {
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
