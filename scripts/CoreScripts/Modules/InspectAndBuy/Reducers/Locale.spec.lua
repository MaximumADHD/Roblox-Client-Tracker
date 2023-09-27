return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetLocale = require(InspectAndBuyFolder.Actions.SetLocale)
	local Locale = require(script.Parent.Locale)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local MOCK_LOCALE = "en-uk"

	describe("SetLocale", function()
		it("should set the locale", function()
			local newState = Locale(nil, SetLocale(MOCK_LOCALE))
			expect(newState).toBe(MOCK_LOCALE)
		end)
	end)
end
