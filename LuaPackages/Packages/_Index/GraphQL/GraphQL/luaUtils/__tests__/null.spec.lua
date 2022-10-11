return function()
	local NULL = require(script.Parent.Parent.null)

	describe("NULL", function()
		it("should stringify correclty", function()
			expect(tostring(NULL)).to.equal("null")
		end)

		it("should not be extendable", function()
			expect(function()
				NULL.foo = "bar"
			end).toThrow('"foo" (string) is not a valid member of null')
		end)
	end)
end
