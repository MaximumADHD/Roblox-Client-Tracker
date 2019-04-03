local Roact = require(game:GetService("CorePackages").Roact)
local NumTranslationsLine = require(script.Parent.Parent.Components.NumTranslationsLine)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(NumTranslationsLine, {
				PreText = "add",
				NumTranslations = 17,
				EnabledColor = Color3.new(0,0,0),
				DisabledColor = Color3.new(0.3, 0.3, 0.3),
				Checked = true,
				OnClicked = function() end,
				LayoutOrder = 1,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
