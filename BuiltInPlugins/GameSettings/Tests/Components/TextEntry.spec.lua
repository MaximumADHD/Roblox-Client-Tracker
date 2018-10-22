return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local TextEntry = require(Plugin.Src.Components.TextEntry)

	local function createTestTextEntry(text, visible)
		return Roact.createElement(TextEntry, {
			Text = text,
			Visible = visible,
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTextEntry()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function ()
		local container = workspace
		local instance = Roact.mount(createTestTextEntry("", true), container)
		local frame = container.Frame

		expect(frame.Text).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should hide its text when not visible", function ()
		local container = workspace
		local instance = Roact.mount(createTestTextEntry("", false), container)
		local frame = container.Frame

		expect(frame.Text.Visible).to.equal(false)

		Roact.unmount(instance)
	end)
end