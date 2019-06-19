return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local DragDestination = require(Plugin.Src.Components.Thumbnails.DragDestination)

	local theme = Theme.newDummyTheme()

	local function createTestDragDestination(enabled)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			destination = Roact.createElement(DragDestination),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDragDestination()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end