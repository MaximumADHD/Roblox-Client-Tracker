-- Helper to determine what text to show to tell users that they need to restart their app so that their
-- mic permissions are updated after changing it in deeplinking. This is only necessary on Android as
-- other platforms either inform the user that they need to restart or do it automatically when
-- returning to Roblox
-- This is a temporary fix until we can figure out how to get the app on Android to restart. Once
-- we have such a solution, we'll remove this logic to follow universality principles

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local restartOnMicAccessChange = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.RestartOnMicAccessChange")

return function(UserInputService: { [string]: any })
	local platform = UserInputService:GetPlatform()
	return if platform == Enum.Platform.Android then "<b>" .. restartOnMicAccessChange .. "</b>" else nil
end
