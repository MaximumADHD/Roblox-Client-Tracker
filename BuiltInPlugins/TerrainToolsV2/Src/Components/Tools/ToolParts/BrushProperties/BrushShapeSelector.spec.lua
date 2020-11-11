local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local BrushShapeSelector = require(script.Parent.BrushShapeSelector)

return function()
	it("should create and destroy without errors", function()
		local element = MockProvider.createElementWithMockContext(BrushShapeSelector)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
