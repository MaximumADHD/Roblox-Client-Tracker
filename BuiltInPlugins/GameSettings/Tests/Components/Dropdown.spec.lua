return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local Dropdown = require(Plugin.Src.Components.Dropdown)
	local theme = Theme.newDummyTheme()

	local function createTestDropdown(enabled, entries, open)
		local dropDown = Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			Dropdown = Roact.createElement(Dropdown, {
				Enabled = enabled,
				Entries = entries or {},
				StartOpen = open,
			})
		})
		return dropDown
	end

	it("should create and destroy without errors", function()
		local element = createTestDropdown(true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestDropdown(true, {}, true), container)
		local background = container.ImageButton

		expect(background.EntriesBox).to.be.ok()
		expect(background.EntriesBox.Entries).to.be.ok()
		expect(background.EntriesBox.Entries.Layout).to.be.ok()
		expect(background.Border).to.be.ok()
		expect(background.Border.Padding).to.be.ok()
		expect(background.Border.Outside).to.be.ok()
		expect(background.Border.Arrow).to.be.ok()
		expect(background.Border.Current).to.be.ok()
		expect(background.Gradient).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should not be interactable when disabled", function()
		local container = workspace
		local element = createTestDropdown(false, {}, true)
		local instance = Roact.mount(element, container)

		local background = container.ImageButton
		expect(background:FindFirstChild("EntriesBox")).never.to.be.ok()
		expect(background.Border.Current.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	describe("Entries", function()
		it("should show only when the dropdown is open", function()
			local container = workspace
			local element = createTestDropdown(true, {}, false)
			local instance = Roact.mount(element, container)

			local background = container.ImageButton
			expect(background:FindFirstChild("EntriesBox")).never.to.be.ok()
			expect(background:FindFirstChild("Gradient")).never.to.be.ok()

			Roact.unmount(instance)
		end)

		it("should scale to the number of entries", function()
			local container = workspace
			local element = createTestDropdown(true, {
				{Id = "One"},
				{Id = "Two"},
				{Id = "Three"},
				{Id = "Four"},
				{Id = "Five"},
			}, true)
			local instance = Roact.mount(element, container)

			local scrollingFrame = container.ImageButton.EntriesBox.Entries
			expect(scrollingFrame.CanvasSize).to.equal(UDim2.new(0, 0, 0, 38 * 5))

			Roact.unmount(instance)
		end)
	end)
end