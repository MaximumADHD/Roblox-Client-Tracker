--!strict

return function()
	local multiLanguageUtils = require(script.Parent.multiLanguageUtils)
	describe("uppercase", function()
		it("uppercases english", function()
			expect(multiLanguageUtils.upper("hello")).to.equal("HELLO")
		end)

		it("uppercases spanish", function()
			expect(multiLanguageUtils.upper("Mansión")).to.equal("MANSIÓN")
		end)

		it("it ignores character based languages", function()
			expect(multiLanguageUtils.upper("テクノロジー")).to.equal("テクノロジー")
		end)
	end)

	describe("lowercase", function()
		it("lowercases english", function()
			expect(multiLanguageUtils.lower("HELLO")).to.equal("hello")
		end)

		it("lowercases spanish", function()
			expect(multiLanguageUtils.lower("MANSIÓN")).to.equal("mansión")
		end)

		it("it ignores character based languages", function()
			expect(multiLanguageUtils.lower("テクノロジー")).to.equal("テクノロジー")
		end)
	end)
end
