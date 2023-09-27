return function()
	local mockTranslator = require(script.Parent.mockTranslator)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should have FormatByKey function", function()
		expect(mockTranslator.FormatByKey).never.toBeNil()
		expect(mockTranslator.FormatByKey).toEqual(expect.any("function"))
	end)

	describe("FormatByKey", function()
		it("should return a string value", function()
			local string = mockTranslator:FormatByKey("testing")

			expect(string).toEqual(expect.any("string"))

			local string2 = mockTranslator:FormatByKey()

			expect(string2).toEqual(expect.any("string"))
		end)
	end)

end
