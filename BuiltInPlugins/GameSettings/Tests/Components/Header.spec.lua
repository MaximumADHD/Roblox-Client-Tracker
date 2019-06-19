return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local Header = require(Plugin.Src.Components.Header)

	local theme = Theme.newDummyTheme()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			header = Roact.createElement(Header),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end