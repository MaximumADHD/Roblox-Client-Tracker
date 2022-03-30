return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TestHelpers = require(Framework.TestHelpers)
	local SimpleExpandablePane = require(script.Parent.SimpleExpandablePane)

	local function createTestSimpleExpandablePane(props)
		props = props or {}

		return TestHelpers.provideMockContext(nil, {
			SimpleExpandablePane = Roact.createElement(SimpleExpandablePane, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestSimpleExpandablePane()
		local instance = Roact.mount(element)

		Roact.unmount(instance)
	end)
end