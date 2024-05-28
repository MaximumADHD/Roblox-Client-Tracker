--!nonstrict
-- Cross Experience Voice StarterScript

print('[CEV] Loading CEVStarterScript')

local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local loadErrorHandlerFromEngine = game:GetEngineFeature("LoadErrorHandlerFromEngine")

-- Load the error reporter as early as possible, even before we finish requiring,
-- so that it can report any errors that come after this point.
ScriptContext:AddCoreScriptLocal("CoreScripts/CoreScriptErrorReporter", RobloxGui)

-- remove this when removing FFlagConnectErrorHandlerInLoadingScript
local FFlagConnectionScriptEnabled = settings():GetFFlag("ConnectionScriptEnabled")

-- local FFlagUseRoactGlobalConfigInCoreScripts = require(RobloxGui.Modules.Flags.FFlagUseRoactGlobalConfigInCoreScripts)
local FFlagConnectErrorHandlerInLoadingScript = require(RobloxGui.Modules.Flags.FFlagConnectErrorHandlerInLoadingScript)
local GetFFlagEnableVoiceDefaultChannel = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceDefaultChannel)
local GetFFlagIrisAlwaysOnTopEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisAlwaysOnTopEnabled
local getFFlagMicrophoneDevicePermissionsPromptLogging = require(RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)

local UIBlox = require(CorePackages.UIBlox)
local uiBloxConfig = require(CoreGuiModules.UIBloxInGameConfig)
UIBlox.init(uiBloxConfig)

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
if ChromeEnabled then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	ExperienceChat.GlobalFlags.AvatarChatEnabled = FFlagAvatarChatCoreScriptSupport
	ExperienceChat.GlobalFlags.ChromeEnabled = true
elseif FFlagAvatarChatCoreScriptSupport then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	ExperienceChat.GlobalFlags.AvatarChatEnabled = true
end

local getFFlagDoNotPromptCameraPermissionsOnMount = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
if getFFlagDoNotPromptCameraPermissionsOnMount() then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	ExperienceChat.GlobalFlags.DoNotPromptCameraPermissionsOnMount = true
end

local GetFFlagJoinWithoutMicPermissions = require(RobloxGui.Modules.Flags.GetFFlagJoinWithoutMicPermissions)
if GetFFlagJoinWithoutMicPermissions() then
	local ExperienceChat = require(CorePackages.ExperienceChat) :: any
	ExperienceChat.GlobalFlags.JoinWithoutMicPermissions = true
end

local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
if getFFlagEnableAlwaysAvailableCamera() then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	ExperienceChat.GlobalFlags.EnableAlwaysAvailableCamera = true
end

local GetFFlagConsolidateBubbleChat = require(RobloxGui.Modules.Flags.GetFFlagConsolidateBubbleChat)
if GetFFlagConsolidateBubbleChat() then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	local GlobalFlags = (ExperienceChat.GlobalFlags :: any)
	GlobalFlags.ConsolidateBubbleChat = true
end

local getFFlagRenderVoiceBubbleAfterAsyncInit = require(RobloxGui.Modules.Flags.getFFlagRenderVoiceBubbleAfterAsyncInit)
if getFFlagRenderVoiceBubbleAfterAsyncInit() then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	local GlobalFlags = (ExperienceChat.GlobalFlags :: any)
	GlobalFlags.RenderVoiceBubbleAfterAsyncInit = true
end

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local InGameMenuUIBlox = InGameMenuDependencies.UIBlox
if InGameMenuUIBlox ~= UIBlox then
	InGameMenuUIBlox.init(uiBloxConfig)
end

local soundFolder = Instance.new("Folder")
soundFolder.Name = "Sounds"
soundFolder.Parent = RobloxGui

-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
local function safeRequire(moduleScript)
	local success, ret = pcall(require, moduleScript)
	if success then
		return ret
	else
		warn("Failure to Start CoreScript module " .. moduleScript.Name .. ".\n" .. ret)
	end
end

if not FFlagConnectErrorHandlerInLoadingScript and not loadErrorHandlerFromEngine then
	if FFlagConnectionScriptEnabled and not GuiService:IsTenFootInterface() then
		ScriptContext:AddCoreScriptLocal("Connection", RobloxGui)
	end
end

-- In-game notifications script
ScriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

-- TopBar
coroutine.wrap(safeRequire)(CoreGuiModules.TopBar)

if game:GetEngineFeature("EnableBubbleChatFromChatService") or UserRoactBubbleChatBeta then
	ScriptContext:AddCoreScriptLocal("CoreScripts/PlayerBillboards", RobloxGui)
end


if game:GetEngineFeature("VoiceChatSupported") and GetFFlagEnableVoiceDefaultChannel() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/VoiceDefaultChannel", RobloxGui)
end

ScriptContext:AddCoreScriptLocal("CoreScripts/ExperienceChatMain", RobloxGui)

local getFFlagEnableBackgroundDM = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagEnableBackgroundDM
if getFFlagEnableBackgroundDM() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CrossExperienceVoiceStarter", script.Parent)
end

print('[CEV] CEVStarterScript Loaded')