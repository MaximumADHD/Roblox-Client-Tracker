if not game:GetFastFlag("TerrainToolsUseDevFramework") then
	return function() end
end

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local Tab = require(script.Parent.Tab)

return function()
	it("should create and destroy without errors", function()
		local element = MockProvider.createElementWithMockContext(Tab)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
