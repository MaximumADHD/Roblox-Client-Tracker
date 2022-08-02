local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestImmutability = require(Plugin.Src.TestHelpers.testImmutability)
local MockStudioPlugin = require(Plugin.Src.TestHelpers.MockStudioPlugin)
local Http = require(Plugin.Packages.Http)
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)

local LoadCountryRegion = require(Plugin.Src.Actions.LoadCountryRegion)
local OnEmulatedCountryRegionChanged = require(Plugin.Src.Actions.OnEmulatedCountryRegionChanged)
local InitCountryRegionSetting = require(Plugin.Src.Thunks.InitCountryRegionSetting)
local CountryRegionReducer = require(Plugin.Src.Reducers.CountryRegionReducer)

return function()
	local function createTestStore(mockData)
		local middlewares = { Rodux.thunkMiddleware }
		local store = Rodux.Store.new(CountryRegionReducer, { CountryRegion = mockData }, middlewares)
		return store
	end

	it("should return its expected default state", function()
		local r = Rodux.Store.new(CountryRegionReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().countryRegionTable)).to.equal("table")
		expect(type(r:getState().countryRegionList)).to.equal("table")
		expect(type(r:getState().userCountryRegionCode)).to.equal("string")
	end)

	describe("LoadCountryRegion", function()
		local mockResponseTab = {
			{
				code = "US",
				displayName = "United States",
			},
		}

		it("should load country region", function()
			local state = CountryRegionReducer(nil, LoadCountryRegion(mockResponseTab))
			expect(state.countryRegionTable).to.be.ok()
			expect(state.countryRegionList).to.be.ok()
			expect(state.userCountryRegionCode).to.be.ok()
			expect(type(state.countryRegionTable)).to.equal("table")
			expect(type(state.countryRegionList)).to.equal("table")
			expect(type(state.userCountryRegionCode)).to.equal("string")
			expect(#state.countryRegionList).to.equal(1)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CountryRegionReducer, LoadCountryRegion(mockResponseTab))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("OnEmulatedCountryRegionChanged", function()
		it("should change userCountryRegionCode", function()
			local state = CountryRegionReducer(nil, OnEmulatedCountryRegionChanged("US"))
			expect(state.countryRegionTable).to.be.ok()
			expect(state.countryRegionList).to.be.ok()
			expect(state.userCountryRegionCode).to.be.ok()
			expect(type(state.countryRegionTable)).to.equal("table")
			expect(type(state.countryRegionList)).to.equal("table")
			expect(type(state.userCountryRegionCode)).to.equal("string")
			expect(state.userCountryRegionCode).to.equal("US")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(CountryRegionReducer, OnEmulatedCountryRegionChanged("US"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("InitCountryRegionSetting", function()
		local SUBDOMAIN = "api"
		local PATH = "users/account-info"

		if game:GetFastFlag("PlayerEmulatorMigratedCountryCodeCallEnabled") then
			-- Update subdomain and path to use the migrated enpoint that speicifically
			-- provides the country code
			SUBDOMAIN = "users"
			PATH = "v1/users/authenticated/country-code"
		end

		local url = UrlConstructor.BuildUrl(SUBDOMAIN, PATH)
		local mockHttpResponse = {
			[url] = {
				Body = "{\"CountryCode\":\"AD\"}",
				Success = true,
				StatusMessage = "OK",
				StatusCode = 200,
			},
		}

		if game:GetFastFlag("PlayerEmulatorMigratedCountryCodeCallEnabled") then
			mockHttpResponse = {
				[url] = {
					Body = "{\"countryCode\":\"AD\"}",
					Success = true,
					StatusMessage = "OK",
					StatusCode = 200,
				},
			}
		end
		local mockCountryRegionTable = {
			countryRegionTable = {
				US = {
					code = "US",
					name = "United States",
					displayText = "United States(US)",
				},
			},
		}
		it("should set PlayerEmulatorService.StudioEmulatedCountryRegionCode using cached value", function()
			local store = createTestStore(mockCountryRegionTable)
			local mockPlugin = MockStudioPlugin.new("US")
			local mockNetworkingImpl = Http.Networking.mock(mockHttpResponse)
			store:dispatch(InitCountryRegionSetting(mockNetworkingImpl, mockPlugin))
			expect(PlayerEmulatorService.EmulatedCountryCode).equal("US")
		end)

		it("should set PlayerEmulatorService.StudioEmulatedCountryRegionCode using account-info value", function()
			local store = createTestStore(mockCountryRegionTable)
			local mockPlugin = MockStudioPlugin.new()
			local mockNetworkingImpl = Http.Networking.mock(mockHttpResponse)
			store:dispatch(InitCountryRegionSetting(mockNetworkingImpl, mockPlugin))
			expect(PlayerEmulatorService.EmulatedCountryCode).equal("AD")
		end)
	end)

end