-- Helper to check which set of instructions we should provide to tell users how to turn on their microphone in their device
-- This will likely be done through a Voltron protocol in the future, we should keep an eye on that when it comes

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local androidWithDeeplink = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.AndroidWithDeeplink")
local windowsWithDeeplink = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.WindowsWithDeeplink")
local androidWithoutDeeplink = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.AndroidWithoutDeeplink")
local windowsWithoutDeeplink = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.WindowsWithoutDeeplink")

return function(settingsAppAvailable: boolean, UserInputService: { [string]: any })
	local platform = UserInputService:GetPlatform()
	if platform == Enum.Platform.Android then
		return if settingsAppAvailable then androidWithDeeplink else androidWithoutDeeplink
	end

	if platform == Enum.Platform.Windows then
		return if settingsAppAvailable then windowsWithDeeplink else windowsWithoutDeeplink
	end
	return nil
end
