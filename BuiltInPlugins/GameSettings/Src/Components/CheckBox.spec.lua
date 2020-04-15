return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local CheckBox = require(Plugin.Src.Components.CheckBox)
	local theme = Theme.newDummyTheme()

	local function createTestCheckBox(enabled, selected)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			checkBox = Roact.createElement(CheckBox, {
				Title = "Title",
				Enabled = enabled,
				Selected = selected,
				OnClicked = function()
				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestCheckBox(true, false)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBox(true, false), container)
		local frame = container.Frame

		expect(frame.Background).to.be.ok()
		expect(frame.Background.Selection).to.be.ok()
		expect(frame.Background.TitleLabel).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should change color when highlighted", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBox(true, true), container)
		local frame = container.Frame

		expect(frame.Background.Selection.Visible).to.equal(true)

		local newBox = createTestCheckBox(true, false)
		instance = Roact.reconcile(instance, newBox)

		expect(frame.Background.Selection.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should gray out when disabled", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestCheckBox(false, true), container)
		local frame = container.Frame

		expect(frame.Background.Selection.Visible).to.equal(false)
		expect(frame.Background.TitleLabel.TextTransparency).never.to.equal(0)

		Roact.unmount(instance)
	end)
end