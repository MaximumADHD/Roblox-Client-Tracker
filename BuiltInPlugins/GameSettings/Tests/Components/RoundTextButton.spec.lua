return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local RoundTextButton = require(Plugin.Src.Components.RoundTextButton)

	local function createTestRoundTextButton()
		return Roact.createElement(RoundTextButton, {
			Active = true,
			Style = {},
			Name = "Name",
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestRoundTextButton()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestRoundTextButton(), container)
		local button = container.ImageButton

		expect(button.Border).to.be.ok()
		expect(button.Text).to.be.ok()

		Roact.unmount(instance)
	end)
end