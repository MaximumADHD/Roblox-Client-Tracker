return function()
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui.RobloxGui
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

	local key = "InGame.CommonUI.Button.KeepPlaying"
	local englishTranslator = CoreGui.CoreScriptLocalization:GetTranslator("en-us")
	local expectedEnglishFormat = englishTranslator:FormatByKey(key)

	local spanishTranslator = CoreGui.CoreScriptLocalization:GetTranslator("es-es")
	local expectedSpanishFormat = spanishTranslator:FormatByKey(key)

	describe("RobloxTranslator default locale", function()
		it("should format without errors", function()
			local formatted = RobloxTranslator:FormatByKey(key)
			expect(formatted).toBe(expectedEnglishFormat)
		end)
	end)

	describe("RobloxTranslator es-es locale", function()
		it("should format without errors", function()
			local formatted = RobloxTranslator:FormatByKeyForLocale(key, "es-es")
			expect(formatted).toBe(expectedSpanishFormat)
		end)
	end)

	describe("RobloxTranslator fallback locale", function()
		it("should format without errors", function()
			local formatted = RobloxTranslator:FormatByKeyForLocale(key, "not-a-real-locale")
			expect(formatted).toBe(expectedEnglishFormat)
		end)
	end)
end
