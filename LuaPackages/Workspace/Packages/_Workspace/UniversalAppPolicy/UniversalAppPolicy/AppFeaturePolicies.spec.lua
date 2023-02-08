return function()
	local AppFeaturePolicies = require(script.Parent.AppFeaturePolicies)
	local GetFFlagFixOmniDefaultPolicy = require(script.Parent.Flags.GetFFlagFixOmniDefaultPolicy)

	it("should return the correct default omni policy", function()
		local appPolicyTrue = AppFeaturePolicies({
			UseOmniRecommendation = true,
		}).getUseOmniRecommendation()
		expect(appPolicyTrue).to.equal(true)

		local appPolicyFalse = AppFeaturePolicies({
			UseOmniRecommendation = false,
		}).getUseOmniRecommendation()

		expect(appPolicyFalse).to.equal(false)

		local appPolicyNil = AppFeaturePolicies({}).getUseOmniRecommendation()
		if GetFFlagFixOmniDefaultPolicy() then
			expect(appPolicyNil).to.equal(true)
		else
			expect(appPolicyNil).to.equal(nil)
		end
	end)
end
