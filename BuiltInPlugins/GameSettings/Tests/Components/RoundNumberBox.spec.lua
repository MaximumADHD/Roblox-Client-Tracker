return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent
	local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local RoundNumberBox = require(Plugin.Src.Components.RoundNumberBox)

	local theme = Theme.newDummyTheme()

	local function createTestRoundNumberBox(active)
		return Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			textBox = Roact.createElement(RoundNumberBox, {
				Active = active,
				Number = 9001,
				SetNumber = function()

				end,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestRoundNumberBox(true)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		Roact.mount(createTestRoundNumberBox(true), container)
		local background = container:FindFirstChildOfClass("ImageLabel")

		expect(background.Border).to.be.ok()
		expect(background.Border.Padding).to.be.ok()
		expect(background.Border.Text).to.be.ok()
	end)

	it("should only accept numbers", function()
		local container = Instance.new("Folder")
		Roact.mount(createTestRoundNumberBox(true), container)
		local instance = container:FindFirstChildOfClass("ImageLabel")

		instance.Border.Text.Text.Text = "This is not a number."

		expect(instance.Border.ImageColor3).to.equal(DEPRECATED_Constants.ERROR_COLOR)
	end)
end