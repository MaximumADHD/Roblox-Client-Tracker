return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local RoundTextBox = require(Plugin.Src.Components.RoundTextBox)

	local theme = Theme.newDummyTheme()

	local function createTestRoundTextBox(active, errorMessage)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			textBox = Roact.createElement(RoundTextBox, {
				Active = active,
				MaxLength = 50,
				Multiline = false,
				Text = "Text",
				ErrorMessage = errorMessage,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestRoundTextBox(true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestRoundTextBox(true), container)
		local background = container.ImageLabel

		expect(background.Border).to.be.ok()
		expect(background.Border.Padding).to.be.ok()
		expect(background.Border.Text).to.be.ok()
		expect(background.Tooltip).to.be.ok()

		Roact.unmount(instance)
	end)

	describe("Tooltip", function()
		it("should show the correct length of the text", function ()
			local container = workspace
			local instance = Roact.mount(createTestRoundTextBox(true), container)
			local background = container.ImageLabel

			expect(background.Tooltip.Text).to.equal("4/50")

			Roact.unmount(instance)
		end)

		it("should show an error message if one exists", function ()
			local container = workspace
			local instance = Roact.mount(createTestRoundTextBox(true, "Error"), container)
			local background = container.ImageLabel

			expect(background.Tooltip.Text).to.equal("Error")

			Roact.unmount(instance)
		end)

		it("should be empty if component is inactive", function ()
			local container = workspace
			local instance = Roact.mount(createTestRoundTextBox(false), container)
			local background = container.ImageLabel

			expect(background.Tooltip.Text).to.equal("")

			Roact.unmount(instance)
		end)
	end)
end