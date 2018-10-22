return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local MenuEntry = require(Plugin.Src.Components.MenuEntry)

	local theme = Theme.newDummyTheme()

	local function createTestMenuEntry(selected, err)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			menuEntry = Roact.createElement(MenuEntry, {
				Title = "Title",
				Selected = selected,
				Error = err or false,
				OnClicked = function()
				end,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestMenuEntry(false)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestMenuEntry(false), container)
		local menuEntry = container.Frame

		expect(menuEntry.Title).to.be.ok()
		expect(menuEntry.Highlight).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should show a ribbon when selected", function ()
		local container = workspace
		local instance = Roact.mount(createTestMenuEntry(false), container)
		local menuEntry = container.Frame

		expect(menuEntry.Highlight.BackgroundTransparency).to.equal(1)

		local newMenuEntry = createTestMenuEntry(true)

		instance = Roact.reconcile(instance, newMenuEntry)

		expect(menuEntry.Highlight.BackgroundTransparency).to.equal(0)

		Roact.unmount(instance)
	end)

	it("should show an error icon when appropriate", function ()
		local container = workspace
		local instance = Roact.mount(createTestMenuEntry(false, false), container)
		local menuEntry = container.Frame

		expect(menuEntry.Error.Visible).to.equal(false)

		local newMenuEntry = createTestMenuEntry(false, true)

		instance = Roact.reconcile(instance, newMenuEntry)

		expect(menuEntry.Error.Visible).to.equal(true)

		Roact.unmount(instance)
	end)
end