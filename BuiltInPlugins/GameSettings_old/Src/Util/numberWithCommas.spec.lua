return function()
	local Plugin = script.Parent.Parent.Parent

	local numberWithCommas = require(Plugin.Src.Util.numberWithCommas)

	it("should return 1,337 when passed 1337", function()
		expect(numberWithCommas(1337)).to.equal("1,337")
	end)

	it("should return 420 when passed 420", function()
		expect(numberWithCommas(420)).to.equal("420")
	end)

	it("should return 1,234,567,890 when passed 1234567890", function()
		expect(numberWithCommas(1234567890)).to.equal("1,234,567,890")
	end)

	it("should return -1,234 when passed -1234", function()
		expect(numberWithCommas(-1234)).to.equal("-1,234")
	end)

	it("should return 13,373.14 when passed 13373.14", function()
		expect(numberWithCommas(13373.14)).to.equal("13,373.14")
	end)
end