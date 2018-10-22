return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local StyledScrollingFrame = require(Plugin.Src.Components.StyledScrollingFrame)

	local theme = Theme.newDummyTheme()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			frame = Roact.createElement(StyledScrollingFrame),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
