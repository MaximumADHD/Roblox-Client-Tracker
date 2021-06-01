return function()
	local insert = require(script.Parent.insert)

	describe("return value", function()
		local size, element = {}, {}
		local result = insert(size, element)

		it("should have size field", function()
			expect(result.size).to.equal(size)
		end)

		it("should have element field", function()
			expect(result.element).to.equal(element)
		end)
	end)
end
