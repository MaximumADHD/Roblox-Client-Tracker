local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestImmutability = require(Plugin.Src.TestHelpers.testImmutability)

local LoadCountryRegion = require(Plugin.Src.Actions.LoadCountryRegion)
local CountryRegionReducer = require(Plugin.Src.Reducers.CountryRegionReducer)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(CountryRegionReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().countryRegionTable)).to.equal("table")
		expect(type(r:getState().countryRegionList)).to.equal("table")
	end)

	local mockResponseTab = {
		{
			code = "US",
			displayName = "United States",
		},
	}

	describe("LoadCountryRegion", function()
		it("should load country region", function()
			local state = CountryRegionReducer(nil, LoadCountryRegion(mockResponseTab))
			expect(state.countryRegionTable).to.be.ok()
			expect(state.countryRegionList).to.be.ok()
			expect(type(state.countryRegionTable)).to.equal("table")
			expect(type(state.countryRegionList)).to.equal("table")
			expect(#state.countryRegionList).to.equal(1)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CountryRegionReducer, LoadCountryRegion(mockResponseTab))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end