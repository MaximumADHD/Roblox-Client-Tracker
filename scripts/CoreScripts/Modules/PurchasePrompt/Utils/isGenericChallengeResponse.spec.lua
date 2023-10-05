return function()
	local isGenericChallengeResponse = require(script.Parent.isGenericChallengeResponse)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("empty response should not be a generic challenge response", function()
		local oldValue = game:SetFastFlagForTesting("EnablePerformPurchaseGCSHandling", true);
		expect(isGenericChallengeResponse("{}")).toBe(false)
		game:SetFastFlagForTesting("EnablePerformPurchaseGCSHandling", oldValue);
	end)

	it("sample response should be a generic challenge response", function()
		local oldValue = game:SetFastFlagForTesting("EnablePerformPurchaseGCSHandling", true);
		local gcsResponse = '{"rblx-challenge-response":"{\"errors\":[{\"code\":0,\"message\":\"Challenge is required to authorize the request\"}]}","rblx-challenge-id":"6c023637-1ab0-4731-9086-e2113d781e56","rblx-challenge-metadata":"eyJyZXF1ZXN0UGF0aCI6Ii92Mi9kZXZlbG9wZXItcHJvZHVjdHMve3Byb2R1Y3RJZH0vcHVyY2hhc2UiLCJyZXF1ZXN0TWV0aG9kIjoiUE9TVCJ9","rblx-challenge-type":"forcetwostepverification"}'
		expect(isGenericChallengeResponse(gcsResponse)).toBe(true)
		game:SetFastFlagForTesting("EnablePerformPurchaseGCSHandling", oldValue);
	end)
end
