local Root = script.Parent.Parent
local GetFFlagEnablePerformPurchaseGCSHandling = require(Root.Flags.GetFFlagEnablePerformPurchaseGCSHandling)

-- isGenericChallengeResponse checks if a response matches the expected format for challenges.
function isGenericChallengeResponse(response: string)
	-- Generic Challenge response patterns used to identify a challenge response.
	local challengeResponsePattern = "rblx%-challenge%-response"
	local challengeIDPattern = "rblx%-challenge%-id"
	local challengeMetadataPattern = "rblx%-challenge%-metadata"
	local challengeTypePattern = "rblx%-challenge%-type"
	-- TODO: Remove flag once we have rolled out fully and validated.
	return GetFFlagEnablePerformPurchaseGCSHandling() and (
		response:match(challengeResponsePattern) ~= nil
		and response:match(challengeIDPattern) ~= nil
		and response:match(challengeMetadataPattern) ~= nil
		and response:match(challengeTypePattern) ~= nil
	)
end

return isGenericChallengeResponse
