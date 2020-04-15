return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local RadioButton = require(Plugin.Src.Components.RadioButton)
	local theme = Theme.newDummyTheme()

	local function createTestRadioButton(enabled, selected)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			radioButton = Roact.createElement(RadioButton, {
				Title = "Title",
				Enabled = enabled,
				Description = "",
				Selected = selected,
				OnClicked = function()
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestRadioButton(true, false)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRadioButton(true, false), container)
		local button = container.Frame

		expect(button.Button).to.be.ok()
		expect(button.Button.Highlight).to.be.ok()
		expect(button.Button.TitleLabel).to.be.ok()
		expect(button.Button.DescriptionLabel).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should change color when highlighted", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRadioButton(true, true), container)
		local frame = container.Frame

		expect(frame.Button.Highlight.Visible).to.equal(true)

		local newButton = createTestRadioButton(true, false)
		instance = Roact.reconcile(instance, newButton)

		expect(frame.Button.Highlight.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should gray out when disabled", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestRadioButton(false, true), container)
		local button = container.Frame

		expect(button.Button.Highlight.Visible).to.equal(false)
		expect(button.Button.TitleLabel.TextTransparency).never.to.equal(0)

		Roact.unmount(instance)
	end)
end