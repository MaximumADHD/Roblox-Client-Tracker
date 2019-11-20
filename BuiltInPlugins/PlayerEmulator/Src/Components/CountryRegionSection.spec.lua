local Plugin = script.Parent.Parent.Parent
local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local CountryRegionSection = require(Plugin.Src.Components.CountryRegionSection)

return function()
	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			CountryRegionSection = Roact.createElement(CountryRegionSection)
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end