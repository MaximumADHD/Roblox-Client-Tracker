local FlagSettings = {}

local FFlagSettingsHubBarsRefactor = settings():GetFFlag("SettingsHubBarsRefactor3")

local FFlagSettingsHubInviteToGameWindows = settings():GetFFlag("SettingsHubInviteToGameWindows3")
local FFlagSettingsHubInviteToGameOSX = settings():GetFFlag("SettingsHubInviteToGameOSX3")
local FFlagSettingsHubInviteToGameIOS = settings():GetFFlag("SettingsHubInviteToGameIOS3")
local FFlagSettingsHubInviteToGameAndroid = settings():GetFFlag("SettingsHubInviteToGameAndroid3")
local FFlagSettingsHubInviteToGameUWP = settings():GetFFlag("SettingsHubInviteToGameUWP3")

function FlagSettings.IsShareGamePageEnabledByPlatform(platform)
	if not FFlagSettingsHubBarsRefactor then
		return false
	end

	if platform == Enum.Platform.Windows then
		return FFlagSettingsHubInviteToGameWindows
	elseif platform == Enum.Platform.OSX then
		return FFlagSettingsHubInviteToGameOSX
	elseif platform == Enum.Platform.IOS then
		return FFlagSettingsHubInviteToGameIOS
	elseif platform == Enum.Platform.Android then
		return FFlagSettingsHubInviteToGameAndroid
	elseif platform == Enum.Platform.UWP then
		return FFlagSettingsHubInviteToGameUWP
	end

	return false
end

return FlagSettings