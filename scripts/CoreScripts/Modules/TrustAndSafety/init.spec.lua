return function()
	it("should require without errors", function()
		local TrustAndSafety = require(script.Parent)
		expect(TrustAndSafety).to.be.ok()
	end)
end
