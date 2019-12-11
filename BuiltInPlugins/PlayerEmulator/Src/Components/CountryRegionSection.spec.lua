local Plugin = script.Parent.Parent.Parent
local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local CountryRegionSection = require(Plugin.Src.Components.CountryRegionSection)

return function()
	local store = {
		userCountryRegionCode = "US",
		countryRegionTable = {
			US = {
				code = "US",
				name = "United States",
				displayText = "United States(US)"
			},
		},
		countryRegionList = {
			{
				code = "US",
				name = "United States",
				displayText = "United States(US)"
			},
		}
	}

	it("should create and destroy without errors with mock data", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = store
		}, {
			CountryRegionSection = Roact.createElement(CountryRegionSection)
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			CountryRegionSection = Roact.createElement(CountryRegionSection)
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end