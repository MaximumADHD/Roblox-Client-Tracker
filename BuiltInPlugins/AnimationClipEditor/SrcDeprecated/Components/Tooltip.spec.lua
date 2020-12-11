return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.SrcDeprecated.Context.MockWrapper)

	local Tooltip = require(script.Parent.Tooltip)

	local function createTestTooltip(text, textKey)
		return Roact.createElement(MockWrapper, {}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = text,
				TextKey = textKey,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestTooltip("Test")
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors if a TextKey is provided", function()
		local element = createTestTooltip(nil, "Test")
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should error if no Text or TextKey is provided", function()
		local element = createTestTooltip()

		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)
end