return function()
	local StackHeaderMode = require(script.Parent.Parent.StackHeaderMode)

	describe("StackMode token tests", function()
		it("should return same object for each token for multiple calls", function()
			expect(StackHeaderMode.None).to.equal(StackHeaderMode.None)
			expect(StackHeaderMode.Float).to.equal(StackHeaderMode.Float)
			expect(StackHeaderMode.Screen).to.equal(StackHeaderMode.Screen)
		end)

		it("should return matching string names for symbols", function()
			expect(tostring(StackHeaderMode.None)).to.equal("NONE")
			expect(tostring(StackHeaderMode.Float)).to.equal("FLOAT")
			expect(tostring(StackHeaderMode.Screen)).to.equal("SCREEN")
		end)
	end)
end
