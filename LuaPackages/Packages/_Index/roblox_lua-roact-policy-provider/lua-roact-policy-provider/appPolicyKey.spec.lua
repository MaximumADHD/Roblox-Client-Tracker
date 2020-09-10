return function()
	local appPolicyKey = require(script.Parent.appPolicyKey)

	describe("require return value", function()
		it("SHOULD return a valid Symbol", function()
			expect(appPolicyKey).to.be.ok()
		end)
	end)
end
