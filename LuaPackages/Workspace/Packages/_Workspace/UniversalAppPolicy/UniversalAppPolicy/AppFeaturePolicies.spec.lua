return function()
	local AppFeaturePolicies = require(script.Parent.AppFeaturePolicies)

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
		expect(appPolicyNil).to.equal(true)
	end)
end
