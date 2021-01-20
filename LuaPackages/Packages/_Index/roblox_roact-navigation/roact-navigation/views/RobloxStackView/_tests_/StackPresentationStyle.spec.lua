return function()
	local StackPresentationStyle = require(script.Parent.Parent.StackPresentationStyle)

	describe("StackPresentationStyle token tests", function()
		it("should return same object for each token for multiple calls", function()
			expect(StackPresentationStyle.Default).to.equal(StackPresentationStyle.Default)
			expect(StackPresentationStyle.Modal).to.equal(StackPresentationStyle.Modal)
			expect(StackPresentationStyle.Overlay).to.equal(StackPresentationStyle.Overlay)
		end)

		it("should return matching string names for symbols", function()
			expect(tostring(StackPresentationStyle.Default)).to.equal("DEFAULT")
			expect(tostring(StackPresentationStyle.Modal)).to.equal("MODAL")
			expect(tostring(StackPresentationStyle.Overlay)).to.equal("OVERLAY")
		end)
	end)
end
