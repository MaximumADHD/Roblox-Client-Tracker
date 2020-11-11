return function()
	local CorePackages = game:GetService("CorePackages")
	local ReceivedUserCountryCode = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedUserCountryCode)
	local CountryCodeReducer = require(CorePackages.AppTempCommon.LuaApp.Reducers.CountryCode)

	describe("CountryCode", function()
		it("should be and empty string by default", function()
			local state = CountryCodeReducer(nil, {})

			expect(state).to.equal("")
		end)

		it("should not be modified by other actions", function()
			local oldState = CountryCodeReducer(nil, {})
			local newState = CountryCodeReducer(oldState, { type = "not a real action" })

			expect(newState).to.equal(oldState)
		end)

		it("should be changed using ReceivedUserCountryCode", function()
			local state = CountryCodeReducer(nil, {})

			state = CountryCodeReducer(state, ReceivedUserCountryCode("US"))
			expect(state).to.equal("US")

			state = CountryCodeReducer(state, ReceivedUserCountryCode(""))
			expect(state).to.equal("")
		end)
	end)
end
