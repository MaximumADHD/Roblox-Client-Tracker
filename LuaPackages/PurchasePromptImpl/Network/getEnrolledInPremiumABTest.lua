local Promise = require(script.Parent.Parent.Promise)

local PREMIUM_AB_TEST_NAME = "AustraliaOnly.HomePage.PremiumRobuxPricing"

local function getEnrolledInPremiumABTest(network, externalSettings, userId)
	if externalSettings.getFlagPurchasePromptPremiumEnabled() then
		return network.getABTestGroup(userId, PREMIUM_AB_TEST_NAME)
			:andThen(function(response)
				local variation = nil
				local enrollments = response.data
				if enrollments ~= nil and enrollments[1] ~= nil then
					variation = enrollments[1].Variation
				end
				-- This AB Test apparently uses 0 to signify the test group, and it
				-- does not enroll the control group in the test at all. This means
				-- that the "variation" field will be nil. So we consider a user to
				-- be in the test group if the variation returned is 0
				return Promise.resolve(variation == 0)
			end)
			:catch(function(failure)
				return Promise.resolve(false)
			end)
	end

	return Promise.resolve(false)
end

return getEnrolledInPremiumABTest