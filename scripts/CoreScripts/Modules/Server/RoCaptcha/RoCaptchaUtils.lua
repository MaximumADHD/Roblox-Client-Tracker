local HttpService = game:GetService("HttpService")

export type LaunchData = {
	challengeId: string,
	desiredPlaceId: number,
}

local RoCaptchaUtils = {}

function RoCaptchaUtils.isUniverseAllowed(allowedUniverseIds: string, universeId: number): boolean
	local target = tostring(universeId)
	for entry in string.gmatch(allowedUniverseIds, "[^,]+") do
		if string.match(entry, "^%s*(.-)%s*$") == target then
			return true
		end
	end
	return false
end

function RoCaptchaUtils.parseLaunchData(launchData: any): LaunchData?
	if type(launchData) ~= "string" or launchData == "" then
		return nil
	end

	local ok, parsed = pcall(HttpService.JSONDecode, HttpService, launchData)
	if not ok or type(parsed) ~= "table" then
		return nil
	end

	local challengeId = parsed.challengeId
	local desiredPlaceId = tonumber(parsed.desiredPlaceId)
	if type(challengeId) ~= "string" or challengeId == "" then
		return nil
	end
	if not desiredPlaceId or desiredPlaceId <= 0 or desiredPlaceId % 1 ~= 0 then
		return nil
	end

	return {
		challengeId = challengeId,
		desiredPlaceId = desiredPlaceId,
	}
end

return RoCaptchaUtils
