return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local ReceivedUserCountryCode = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedUserCountryCode)
	local CountryCodeReducer = require(CorePackages.AppTempCommon.LuaApp.Reducers.CountryCode)

	describe("CountryCode", function()
		it("should be and empty string by default", function()
			local state = CountryCodeReducer(nil, {})

			expect(state).toBe("")
		end)

		it("should not be modified by other actions", function()
			local oldState = CountryCodeReducer(nil, {})
			local newState = CountryCodeReducer(oldState, { type = "not a real action" })

			expect(newState).toBe(oldState)
		end)

		it("should be changed using ReceivedUserCountryCode", function()
			local state = CountryCodeReducer(nil, {})

			state = CountryCodeReducer(state, ReceivedUserCountryCode("US"))
			expect(state).toBe("US")

			state = CountryCodeReducer(state, ReceivedUserCountryCode(""))
			expect(state).toBe("")
		end)
	end)
end
