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
				["en-us"] = "Hello",
				["es-mx"] = "Hola!",
				["es"] = "Hola",
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
		it("should return an alternative dialect of a language if specific locale"
			.." is not supported and no default dialect is specified", function()
			local localization = Localization.new(testStringsLocale, "")
			local language = localization:FindFallback("en-uk", testStringsLocale.Content[1].values)
			expect(language).to.equal("en-us")
		end)
	end)
end