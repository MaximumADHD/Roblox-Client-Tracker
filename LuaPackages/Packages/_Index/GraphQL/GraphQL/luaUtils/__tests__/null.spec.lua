local HttpService = game:GetService("HttpService")
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

		it("should have unique identifier inside table", function()
			expect(NULL.__NULL_IDENTIFIER__).to.equal("__GRAPHQL_NULL_OBJECT__")
		end)

		it("should serialize and deserialize", function()
			local result = HttpService:JSONEncode({
				data = NULL,
			})

			local decodedResult = HttpService:JSONDecode(result)

			expect(decodedResult.data.__NULL_IDENTIFIER__).to.equal(NULL.__NULL_IDENTIFIER__)
		end)
	end)
end
