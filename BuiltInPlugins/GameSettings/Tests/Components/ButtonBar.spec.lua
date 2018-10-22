return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local ButtonBar = require(Plugin.Src.Components.ButtonBar)

	local theme = Theme.newDummyTheme()

	local function createTestButtonBar(horizontalAlignment, buttons)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			buttonBar = Roact.createElement(ButtonBar, {
				HorizontalAlignment = horizontalAlignment,
				Buttons = buttons,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestButtonBar(Enum.HorizontalAlignment.Center, {})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestButtonBar(
			Enum.HorizontalAlignment.Center, {}), container)
		local buttonBar = container.Frame

		expect(buttonBar.Layout).to.be.ok()

		local newButtonBar = createTestButtonBar(Enum.HorizontalAlignment.Right, {})

		instance = Roact.reconcile(instance, newButtonBar)

		expect(buttonBar.Layout).to.be.ok()
		expect(buttonBar["1"]).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should hold buttons", function ()
		local container = workspace
		local instance = Roact.mount(createTestButtonBar(
			Enum.HorizontalAlignment.Center, {
			{Name = "Button1", Style = "White", Active = true},
			{Name = "Button2", Style = "White", Active = true},
		}), container)
		local buttonBar = container.Frame

		expect(buttonBar["1"]).to.be.ok()
		expect(buttonBar["2"]).to.be.ok()

		Roact.unmount(instance)
	end)
end