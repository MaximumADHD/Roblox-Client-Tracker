return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)
	local Localization = require(Plugin.Src.Localization.Localization)
	local LocalizationProvider = require(Plugin.Src.Providers.LocalizationProvider)

	local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)

	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()

	local function createTestGameIconWidget(props)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Roact.createElement(LocalizationProvider, {
				localization = localization,
			}, {
				iconWidget = Roact.createElement(GameIconWidget, props),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestGameIconWidget()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestGameIconWidget(), container)
		local widget = container.Frame

		expect(widget.Title).to.be.ok()
		expect(widget.Content).to.be.ok()
		expect(widget.Content.Notes).to.be.ok()
		expect(widget.Content.Notes.Layout).to.be.ok()
		expect(widget.Content.Notes.FileHint).to.be.ok()
		expect(widget.Content.Notes.ModerationHint).to.be.ok()
		expect(widget.Content.Icon).to.be.ok()
		expect(widget.Content.NewIcon).to.be.ok()
		expect(widget.Content.NewNote).to.be.ok()

		Roact.unmount(instance)
	end)

	describe("Icon", function()
		it("should not display when the widget is disabled", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestGameIconWidget({
				Enabled = false,
			}), container)
			local icon = container.Frame.Content.Icon

			expect(icon.Visible).to.equal(false)

			Roact.unmount(instance)
		end)

		it("should display only when icon exists", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestGameIconWidget({
				Enabled = true,
				Icon = "rbxassetid://1818"
			}), container)
			local icon = container.Frame.Content.Icon

			expect(icon.Visible).to.equal(true)

			local newIconWidget = createTestGameIconWidget({
				Enabled = true,
				Icon = "None",
			})
			Roact.reconcile(instance, newIconWidget)

			expect(icon.Visible).to.equal(false)

			Roact.unmount(instance)
		end)
	end)

	describe("NewIcon", function()
		it("should not display when the widget is disabled", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestGameIconWidget({
				Enabled = false,
			}), container)
			local icon = container.Frame.Content.NewIcon

			expect(icon.Visible).to.equal(false)

			Roact.unmount(instance)
		end)

		it("should display only when icon doesn't exist", function()
			local container = Instance.new("Folder")
			local instance = Roact.mount(createTestGameIconWidget({
				Enabled = true,
				Icon = "rbxassetid://1818"
			}), container)
			local icon = container.Frame.Content.NewIcon

			expect(icon.Visible).to.equal(false)

			local newIconWidget = createTestGameIconWidget({
				Enabled = true,
				Icon = "None",
			})
			Roact.reconcile(instance, newIconWidget)

			expect(icon.Visible).to.equal(true)

			Roact.unmount(instance)
		end)
	end)
end