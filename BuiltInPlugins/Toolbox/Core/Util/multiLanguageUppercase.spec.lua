--!strict

return function()
	local multiLanguageUppercase = require(script.Parent.multiLanguageUppercase)
	it("uppercases english", function()
		expect(multiLanguageUppercase("hello")).to.equal("HELLO")
	end)

	it("uppercases spanish", function()
		expect(multiLanguageUppercase("Mansión")).to.equal("MANSIÓN")
	end)

	it("it ignores character based languages", function()
		expect(multiLanguageUppercase("テクノロジー")).to.equal("テクノロジー")
	end)
end
