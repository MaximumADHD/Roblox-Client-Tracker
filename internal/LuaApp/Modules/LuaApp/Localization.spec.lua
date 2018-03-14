local testStringsLocale = {
	Keys = {
		HELLO = "HELLO",
	},

	Languages = {
		EN_US = "en-us",
		ES_MX = "es-mx",
		ES = "es"
	},

	DefaultLanguage = "en-us",

	Content = {
		{
			key = "HELLO",
			values = {
				["en-us"] = "Hello in American English",
				["es-mx"] = "Hello in Mexican Spanish",
				["es"] = "Hello in Spanish",
			},
		},
	},
}

return function()
	local Localization = require(script.Parent.Localization)

	describe("Localization:FindFallback", function()
		it("should return a locale if that locale is supported", function()
			local localization = Localization.new(testStringsLocale, "")
			local language = localization:FindFallback("es-mx", testStringsLocale.Content[1].values)
			expect(language).to.equal("es-mx")
		end)
		it("should return the default dialect of a language if specific locale is not supported", function()
			local localization = Localization.new(testStringsLocale, "")
			local language = localization:FindFallback("es-uy", testStringsLocale.Content[1].values)
			expect(language).to.equal("es")
		end)
	end)

	describe("SetLocale", function()
		it("should change the locale", function()
			local localization = Localization.new(testStringsLocale, "en-us")
			local translation = localization:Format(testStringsLocale.Keys.HELLO)
			expect(translation).to.equal("Hello in American English")
			localization:SetLocale("es")
			translation = localization:Format(testStringsLocale.Keys.HELLO)
			expect(translation).to.equal("Hello in Spanish")
		end)
	end)
end