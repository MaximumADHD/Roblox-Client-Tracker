--!nonstrict
-- Cross Experience Voice StarterScript

print('[CEV] Loading CEVStarterScript')

local ScriptContext = game:GetService("ScriptContext")
local Players = game:GetService("Players")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

-- Load the error reporter as early as possible, even before we finish requiring,
-- so that it can report any errors that come after this point.
ScriptContext:AddCoreScriptLocal("CoreScripts/CrossExperienceVoiceErrorReporter", RobloxGui)

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

if game:GetEngineFeature("VoiceChatSupported") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CrossExperienceVoiceDefaultChannel", RobloxGui)
end

print('[CEV] CEVStarterScript Loaded')
