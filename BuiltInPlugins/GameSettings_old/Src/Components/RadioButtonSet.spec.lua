return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

	local theme = Theme.newDummyTheme()

	local function createTestRadioButtonSet(buttons, enabled, selected)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			buttonSet = Roact.createElement(RadioButtonSet, {
				Title = "Title",
				Enabled = enabled,
				SelectionChanged = function()
				end,
				Buttons = buttons,
				Selected = selected,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestRadioButtonSet({}, true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRadioButtonSet({
			{Title = "Button", Description = ""},
		}, true), container)
		local buttonSet = container.Frame

		expect(buttonSet.Title).to.be.ok()
		expect(buttonSet.Content).to.be.ok()
		expect(buttonSet.Content.Layout).to.be.ok()
		expect(buttonSet.Content["1"]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should highlight one button", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRadioButtonSet({
			{Title = "Button1", Description = ""},
			{Title = "Button2", Description = ""},
		}, true), container)
		local buttonSet = container.Frame

		expect(buttonSet.Content["1"].Button.Highlight.Visible).to.equal(true)
		expect(buttonSet.Content["2"].Button.Highlight.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should work with boolean IDs", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRadioButtonSet({
			{Id = true, Title = "Button1", Description = ""},
			{Id = false, Title = "Button2", Description = ""},
		}, true, false), container)
		local buttonSet = container.Frame

		expect(buttonSet.Content["1"].Button.Highlight.Visible).to.equal(false)
		expect(buttonSet.Content["2"].Button.Highlight.Visible).to.equal(true)

		Roact.unmount(instance)
	end)
end