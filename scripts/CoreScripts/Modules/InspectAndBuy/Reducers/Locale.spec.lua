return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetLocale = require(InspectAndBuyFolder.Actions.SetLocale)
	local Locale = require(script.Parent.Locale)

	local MOCK_LOCALE = "en-uk"

	describe("SetLocale", function()
		it("should set the locale", function()
			local newState = Locale(nil, SetLocale(MOCK_LOCALE))
			expect(newState).to.equal(MOCK_LOCALE)
		end)
	end)
end