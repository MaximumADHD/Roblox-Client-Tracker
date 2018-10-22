return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local TitledFrame = require(Plugin.Src.Components.TitledFrame)

	local theme = Theme.newDummyTheme()

	local function createTestTitledFrame()
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			frame = Roact.createElement(TitledFrame, {
				Title = "Title",
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTitledFrame()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestTitledFrame(), container)
		local titledFrame = container.Frame

		expect(titledFrame.Title).to.be.ok()
		expect(titledFrame.Content).to.be.ok()

		Roact.unmount(instance)
	end)
end