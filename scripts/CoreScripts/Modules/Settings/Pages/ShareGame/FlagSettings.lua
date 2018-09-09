local Players = game:GetService("Players")

local FlagSettings = {}

local FFlagSettingsHubInviteToGameWindows = settings():GetFVariable("SettingsHubInviteToGameWindows5")
local FFlagSettingsHubInviteToGameOSX = settings():GetFVariable("SettingsHubInviteToGameOSX5")
local FFlagSettingsHubInviteToGameIOS = settings():GetFVariable("SettingsHubInviteToGameIOS5")
local FFlagSettingsHubInviteToGameAndroid = settings():GetFVariable("SettingsHubInviteToGameAndroid5")
local FFlagSettingsHubInviteToGameUWP = settings():GetFVariable("SettingsHubInviteToGameUWP5")

-- Helper function to throttle based on player Id:
function FlagSettings.ThrottleUserId(throttle, userId)
	assert(type(throttle) == "number")
	assert(type(userId) == "number")

	-- Determine userRollout using last two digits of user ID:
	-- (+1 to change range from 0-99 to 1-100 as 0 is off, 100 is full on):
	local userRollout = (userId % 100) + 1
	return userRollout <= throttle
end

function FlagSettings.IsShareGamePageEnabledByPlatform(platform)
	local throttle
	if platform == Enum.Platform.Windows then
		throttle = FFlagSettingsHubInviteToGameWindows
	elseif platform == Enum.Platform.OSX then
		throttle = FFlagSettingsHubInviteToGameOSX
	elseif platform == Enum.Platform.IOS then
		throttle = FFlagSettingsHubInviteToGameIOS
	elseif platform == Enum.Platform.Android then
		throttle = FFlagSettingsHubInviteToGameAndroid
	elseif platform == Enum.Platform.UWP then
		throttle = FFlagSettingsHubInviteToGameUWP
	end

	local throttleNumber = tonumber(throttle)
	if not throttleNumber then
		return false
	end

	local userId = Players.LocalPlayer.UserId
	return FlagSettings.ThrottleUserId(throttleNumber, userId)
end

return FlagSettings