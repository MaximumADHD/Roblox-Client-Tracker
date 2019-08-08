return function()
	local Plugin = script.Parent.Parent.Parent

	local firstToUpper = require(Plugin.Core.Util.firstToUpper)

	describe("setFirstCharacterToUpperCase", function()
		it("should capitalize a lower case first alphanumic first character", function()
			local inputString = "aa"
			local result = firstToUpper(inputString)
			expect(string.sub(result, 1, 1)).to.equal("A")
			expect(string.sub(result, 2, #result)).to.equal("a")
		end)

		it("should make no change to an upper case first alphanumic first character", function()
			local inputString = "Aa"
			local result = firstToUpper(inputString)
			expect(string.sub(result, 1, 1)).to.equal("A")
			expect(string.sub(result, 2, #result)).to.equal("a")
		end)

		it("should make no change to a numeric first character", function()
			local inputString = "2a"
			local result = firstToUpper(inputString)
			expect(string.sub(result, 1, 1)).to.equal("2")
			expect(string.sub(result, 2, #result)).to.equal("a")
		end)

		it("should make no change to an empty string", function()
			local inputString = ""
			local result = firstToUpper(inputString)
			expect(#result).to.equal(0)
		end)
	end)
end
