if not game:GetFastFlag("TerrainToolsUseDevFramework") then
	return function() end
end

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local TerrainTools = require(script.Parent.TerrainTools)

return function()
	it("should create and destroy without errors", function()
		local mocks = MockProvider.createMocks()
		local mockItems = MockProvider.createMockContextItems(mocks)

		local element = Roact.createElement(TerrainTools, mockItems)
		local instance = Roact.mount(element)
		Roact.unmount(instance)

		MockProvider.cleanupMocks(mocks, mockItems)
	end)
end
