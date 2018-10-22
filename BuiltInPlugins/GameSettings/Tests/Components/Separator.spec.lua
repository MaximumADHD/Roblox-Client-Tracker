return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local Separator = require(Plugin.Src.Components.Separator)

	local theme = Theme.newDummyTheme()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ThemeProvider, {
			theme = theme
		}, {
			separator = Roact.createElement(Separator),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end