return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local DropdownEntry = require(Plugin.Src.Components.DropdownEntry)
	local theme = Theme.newDummyTheme()

	local function createTestDropdownEntry(id, title, current)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Entry = Roact.createElement(DropdownEntry, {
				Id = id or "",
				Title = title,
				Current = current or false
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestDropdownEntry()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestDropdownEntry(), container)
		local button = container.ImageButton

		expect(button.Main).to.be.ok()
		expect(button.Main.Highlight).to.be.ok()
		expect(button.Main.Title).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should highlight only if it is current", function ()
		local container = workspace
		local instance = Roact.mount(createTestDropdownEntry("Id", "Name", true), container)
		local button = container.ImageButton

		expect(button.Main.Highlight.Visible).to.equal(true)

		local newInstance = createTestDropdownEntry("Id", "Name", false)
		instance = Roact.reconcile(instance, newInstance)

		button = container.ImageButton
		expect(button.Main.Highlight.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	describe("Name", function()
		it("should be Id if Title is nil", function ()
			local container = workspace
			local instance = Roact.mount(createTestDropdownEntry("Name", nil), container)
			local button = container.ImageButton

			expect(button.Main.Title.Text).to.equal("Name")

			Roact.unmount(instance)
		end)

		it("should be Title if it exists", function ()
			local container = workspace
			local instance = Roact.mount(createTestDropdownEntry("Name", "OtherName"), container)
			local button = container.ImageButton

			expect(button.Main.Title.Text).to.equal("OtherName")

			Roact.unmount(instance)
		end)
	end)
end