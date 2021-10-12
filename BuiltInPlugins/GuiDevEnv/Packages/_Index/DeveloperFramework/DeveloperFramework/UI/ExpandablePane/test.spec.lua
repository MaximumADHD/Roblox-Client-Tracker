return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TestHelpers = require(Framework.TestHelpers)
	local ExpandablePane = require(script.Parent)

	local function createTestExpandablePane(props)
		props = props or {}

		return TestHelpers.provideMockContext(nil, {
			ExpandablePane = Roact.createElement(ExpandablePane, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestExpandablePane({
			OnExpandedChanged = function() end
		})
		local instance = Roact.mount(element)

		Roact.unmount(instance)
	end)
end