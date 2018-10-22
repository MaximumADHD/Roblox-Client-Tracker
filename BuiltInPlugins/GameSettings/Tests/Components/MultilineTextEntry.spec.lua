return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local MultilineTextEntry = require(Plugin.Src.Components.MultilineTextEntry)

	local theme = Theme.newDummyTheme()

	local function createTestMultilineTextEntry(visible)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			textEntry = Roact.createElement(MultilineTextEntry, {
				Text = "Text",
				Visible = visible,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMultilineTextEntry(true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestMultilineTextEntry(true), container)
		local frame = container.Frame

		expect(frame.ScrollingFrame).to.be.ok()
		expect(frame.ScrollingFrame).to.be.ok()
		expect(frame.ScrollingFrame.Padding).to.be.ok()
		expect(frame.ScrollingFrame.Text).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should hide its text when not visible", function ()
		local container = workspace
		local instance = Roact.mount(createTestMultilineTextEntry(false), container)
		local frame = container.Frame

		expect(frame.ScrollingFrame.Text.Visible).to.equal(false)

		Roact.unmount(instance)
	end)
end