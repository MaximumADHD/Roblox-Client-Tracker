-- ROBLOX deviation: no upstream tests

return function()
	local devAssert = require(script.Parent.Parent.devAssert).devAssert

	describe("Source", function()
		it("checks reponse message when assertion is false", function()
			local myString = "a"

			expect(function()
				devAssert(myString == "b", "string must equal 'b'")
			end).to.throw("string must equal 'b'")
		end)

		it("does nothing when assertion is true", function()
			local myString = "a"

			expect(function()
				devAssert(myString == "a", "string must equal 'a'")
			end).never.to.throw()
		end)
	end)
end
