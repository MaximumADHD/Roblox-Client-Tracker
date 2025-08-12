--!nonstrict
-- Cross Experience Voice StarterScript

print('[CEV] Loading CEVStarterScript')
local CorePackages = game:GetService("CorePackages")
local CEVLogsToEventIngest = game:GetEngineFeature("CEVLogsToEventIngest")
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local getMemStorageKey = CrossExperience.Utils.getMemStorageKey
local logEvent = CrossExperience.Analytics.CrossExperienceAnalytics.logEvent

if CEVLogsToEventIngest then
	logEvent("partyVoiceCEVStarterScriptLoaded", {
		cevJoinAttemptId = getMemStorageKey("cevJoinAttemptId"),
		clientTimeStamp = os.time(),
	})
end

local ScriptContext = game:GetService("ScriptContext")
local Players = game:GetService("Players")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

if CEVLogsToEventIngest then
	logEvent("cevStarterScriptRobloxGuiLoaded", {
		cevJoinAttemptId = getMemStorageKey("cevJoinAttemptId"),
		clientTimeStamp = os.time(),
	})
end

-- Load the error reporter as early as possible, even before we finish requiring,
-- so that it can report any errors that come after this point.
ScriptContext:AddCoreScriptLocal("CoreScripts/CrossExperienceVoiceErrorReporter", RobloxGui)

if CEVLogsToEventIngest then
	logEvent("cevStarterScriptErrorReporterLoaded", {
		cevJoinAttemptId = getMemStorageKey("cevJoinAttemptId"),
		clientTimeStamp = os.time(),
	})
end

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

if CEVLogsToEventIngest then
	logEvent("cevStarterScriptLocalPlayerLoaded", {
		cevJoinAttemptId = getMemStorageKey("cevJoinAttemptId"),
		clientTimeStamp = os.time(),
	})
end

if game:GetEngineFeature("VoiceChatSupported") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CrossExperienceVoiceDefaultChannel", RobloxGui)
end

if CEVLogsToEventIngest then
	logEvent("cevStarterScriptCEVDefaultChannelLoaded", {
		cevJoinAttemptId = getMemStorageKey("cevJoinAttemptId"),
		clientTimeStamp = os.time(),
	})
end

print('[CEV] CEVStarterScript Loaded')
