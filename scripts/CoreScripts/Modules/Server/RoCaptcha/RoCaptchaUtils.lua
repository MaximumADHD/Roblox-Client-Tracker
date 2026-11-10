local HttpService = game:GetService("HttpService")
local Modules = script.Parent.Parent.Parent
local FFlagRoCaptchaReturnToServerInstance = require(Modules.Common.Flags.FFlagRoCaptchaReturnToServerInstance)

export type LaunchData = {
	challengeId: string,
	desiredPlaceId: number,
	serverInstanceId: string?,
}

-- A malformed id would make every TeleportAsync throw, stranding the player in the captcha place.
local GUID_PATTERN = "^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$"

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

	-- Optional: an invalid value is dropped rather than failing the parse, which would kick the player.
	local serverInstanceId: string? = nil
	if FFlagRoCaptchaReturnToServerInstance then
		serverInstanceId = parsed.serverInstanceId
		if type(serverInstanceId) ~= "string" or not string.match(serverInstanceId, GUID_PATTERN) then
			serverInstanceId = nil
		end
	end

	return {
		challengeId = challengeId,
		desiredPlaceId = desiredPlaceId,
		serverInstanceId = serverInstanceId,
	}
end

return RoCaptchaUtils
