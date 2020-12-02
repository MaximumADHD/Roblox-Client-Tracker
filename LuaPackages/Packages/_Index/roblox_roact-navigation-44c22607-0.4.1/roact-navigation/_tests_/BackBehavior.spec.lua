return function()
	local BackBehavior = require(script.Parent.Parent.BackBehavior)

	describe("BackBehavior token tests", function()
		it("should return same object for each token for multiple calls", function()
			expect(BackBehavior.None).to.equal(BackBehavior.None)
			expect(BackBehavior.InitialRoute).to.equal(BackBehavior.InitialRoute)
			expect(BackBehavior.Order).to.equal(BackBehavior.Order)
			expect(BackBehavior.History).to.equal(BackBehavior.History)
		end)

		it("should return matching string names for symbols", function()
			expect(tostring(BackBehavior.None)).to.equal("NONE")
			expect(tostring(BackBehavior.InitialRoute)).to.equal("INITIAL_ROUTE")
			expect(tostring(BackBehavior.Order)).to.equal("ORDER")
			expect(tostring(BackBehavior.History)).to.equal("HISTORY")
		end)
	end)
end
