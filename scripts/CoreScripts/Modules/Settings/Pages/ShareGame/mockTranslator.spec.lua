return function()
	local mockTranslator = require(script.Parent.mockTranslator)

	it("should have FormatByKey function", function()
		expect(mockTranslator.FormatByKey).to.be.ok()
		expect(type(mockTranslator.FormatByKey)).to.equal("function")
	end)

	describe("FormatByKey", function()
		it("should return a string value", function()
			local string = mockTranslator:FormatByKey("testing")

			expect(string).to.be.ok()
			expect(type(string)).to.equal("string")

			local string2 = mockTranslator:FormatByKey()

			expect(string2).to.be.ok()
			expect(type(string2)).to.equal("string")
		end)
	end)

end