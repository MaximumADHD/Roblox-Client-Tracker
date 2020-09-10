if not game:GetFastFlag("TerrainToolsUseDevFramework") then
	return function() end
end

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local Panel = require(script.Parent.Panel)

return function()
	it("should create and destroy without errors", function()
		local element = MockProvider.createElementWithMockContext(Panel)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
