--!nonstrict
-- Creates all neccessary scripts for the gui on initial load, everything except build tools
-- Created by Ben T. 10/29/10
-- Please note that these are loaded in a specific order to diminish errors/perceived load time by user

local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local FFlagDebugCoreScriptRoactInspector = game:DefineFastFlag("DebugCoreScriptRoactInspector", false)

if FFlagDebugCoreScriptRoactInspector then
	local hasInternalPermission = UserSettings().GameSettings:InStudioMode()
		and game:GetService("StudioService"):HasInternalPermission()

	if hasInternalPermission then
		local DeveloperTools = require(CorePackages.DeveloperTools)
		local inspector = DeveloperTools.forCoreGui("Core UI", {
			rootInstance = "RobloxGui",
		})

		local ReactDevtoolsExtensions = require(CorePackages.Packages.Dev.ReactDevtoolsExtensions)
		inspector:initRoact(ReactDevtoolsExtensions)
	end
end

-- Load the error reporter as early as possible, even before we finish requiring,
-- so that it can report any errors that come after this point.
ScriptContext:AddCoreScriptLocal("CoreScripts/CoreScriptErrorReporter", RobloxGui)

local Roact = require(CorePackages.Roact)
local PolicyService = require(CoreGuiModules:WaitForChild("Common"):WaitForChild("PolicyService"))

local FFlagUseRoactGlobalConfigInCoreScripts = require(RobloxGui.Modules.Flags.FFlagUseRoactGlobalConfigInCoreScripts)

local FFlagDebugAvatarChatVisualization = game:DefineFastFlag("DebugAvatarChatVisualization", false)

local GetFFlagScreenshotHudApi = require(RobloxGui.Modules.Flags.GetFFlagScreenshotHudApi)

local GetFFlagEnableVoiceDefaultChannel = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceDefaultChannel)

local GetFFlagShareInviteLinkContextMenuABTestEnabled =
	require(RobloxGui.Modules.Flags.GetFFlagShareInviteLinkContextMenuABTestEnabled)
local ShareInviteLinkABTestManager = require(RobloxGui.Modules.ShareInviteLinkABTestManager)
local IsExperienceMenuABTestEnabled = require(CoreGuiModules.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(CoreGuiModules.ExperienceMenuABTestManager)
local GetFFlagEnableNewInviteMenuIXP = require(CoreGuiModules.Flags.GetFFlagEnableNewInviteMenuIXP)
local NewInviteMenuExperimentManager = require(CoreGuiModules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)
local GetFFlagEnableSoundSessionTelemetry = require(CoreGuiModules.Flags.GetFFlagEnableSoundSessionTelemetry)
local GetFFlagReportAnythingAnnotationIXP = require(CoreGuiModules.Settings.Flags.GetFFlagReportAnythingAnnotationIXP)
local TrustAndSafetyIXPManager = require(RobloxGui.Modules.TrustAndSafety.TrustAndSafetyIXPManager)

local GetCoreScriptsLayers = require(CoreGuiModules.Experiment.GetCoreScriptsLayers)

local GetFFlagRtMessaging = require(RobloxGui.Modules.Flags.GetFFlagRtMessaging)
local GetFFlagContactListClientEnabled = require(RobloxGui.Modules.Common.Flags.GetFFlagContactListClientEnabled)
local FFlagAddPublishAssetPrompt = game:DefineFastFlag("AddPublishAssetPrompt6", false)
local isCharacterNameHandlerEnabled = require(CorePackages.Workspace.Packages.SharedFlags).isCharacterNameHandlerEnabled
local GetFFlagIrisAlwaysOnTopEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisAlwaysOnTopEnabled
local GetFFlagEnableSocialContextToast = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableSocialContextToast
local GetFFlagLuaAppEnableSquadPage = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableSquadPage
local GetFFlagEnableAppChatInExperience = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience

local FFlagLuaAppEnableToastNotificationsCoreScripts = game:DefineFastFlag("LuaAppEnableToastNotificationsCoreScripts4", false)
local FFlagAdPortalTeleportPromptLua = game:DefineFastFlag("AdPortalTeleportPromptLua", false)

local GetFFlagVoiceUserAgency3 = require(RobloxGui.Modules.Flags.GetFFlagVoiceUserAgency3)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification = require(RobloxGui.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local getFFlagMicrophoneDevicePermissionsPromptLogging = require(RobloxGui.Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)

game:DefineFastFlag("MoodsEmoteFix3", false)
local FFlagEnableSendCameraAccessAnalytics = game:DefineFastFlag("EnableSendCameraAccessAnalytics", false)

local FFlagEnableExperienceNotificationPrompts = game:DefineFastFlag("EnableExperienceNotificationPrompts2", false)
local FFlagEnableBulkPurchaseApp = game:DefineFastFlag("EnableBulkPurchaseApp3", false)
local FFlagEnablePremiumSponsoredExperienceReporting = game:DefineFastFlag("EnablePremiumSponsoredExperienceReporting", false)
local FFlagMoveUGCValidationFunction = require(RobloxGui.Modules.Common.Flags.FFlagMoveUGCValidationFunctionFeature)
local FFlagEnableCancelSubscriptionApp = game:GetEngineFeature("EnableCancelSubscriptionApp")
local FFlagEnableCancelSubscriptionAppLua = game:DefineFastFlag("EnableCancelSubscriptionAppLua", false)
local AudioFocusManagementEnabled = game:GetEngineFeature("AudioFocusManagement")
local FFlagEnableExperienceMenuSessionTracking = require(RobloxGui.Modules.Flags.FFlagEnableExperienceMenuSessionTracking)
local FFlagCoreGuiEnableAnalytics = game:DefineFastFlag("CoreGuiEnableAnalytics", false)
local FFlagEnableExperienceGenericChallengeRendering = game:DefineFastFlag("EnableExperienceGenericChallengeRendering", false)

local UIBlox = require(CorePackages.UIBlox)
local uiBloxConfig = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).UIBloxInGameConfig
UIBlox.init(uiBloxConfig)

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

if game:GetEngineFeature("SoundServiceControlsDefaultListenerLocation") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/DefaultListenerLocation", script.Parent)
end

if GetFFlagEnableAppChatInExperience() then
	local ExperimentCacheManager = require(CorePackages.Workspace.Packages.ExperimentCacheManager).ExperimentCacheManager
	ExperimentCacheManager.default:initialize()

	local InExperienceAppChatExperimentation = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatExperimentation
	InExperienceAppChatExperimentation.default:initialize()

	if InExperienceAppChatExperimentation.getHasInExperienceAppChatEntryPoint() then
		ScriptContext:AddCoreScriptLocal("CoreScripts/AppChatMain", RobloxGui)
	end
end

-- Initialize SessionManager
if FFlagEnableExperienceMenuSessionTracking then
	local _inExperienceSessionization = require(CorePackages.Workspace.Packages.InExperienceSessionization)
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

local GetFFlagShowLikelySpeakingBubbles = require(RobloxGui.Modules.Flags.GetFFlagShowLikelySpeakingBubbles)
if GetFFlagShowLikelySpeakingBubbles() then
	local ExperienceChat = require(CorePackages.ExperienceChat)
	local GlobalFlags = (ExperienceChat.GlobalFlags :: any)
	GlobalFlags.ShowLikelySpeakingBubbles = true
end

local FFlagInExperienceInterventionApp = game:DefineFastFlag("InExperienceInterventionApp", false)

-- Since prop validation can be expensive in certain scenarios, you can enable
-- this flag locally to validate props to Roact components.
if FFlagUseRoactGlobalConfigInCoreScripts and RunService:IsStudio() then
	Roact.setGlobalConfig({
		propValidation = true,
		elementTracing = true,
	})
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

-- In-game notifications script
ScriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

-- SelfieView
coroutine.wrap(safeRequire)(CoreGuiModules.SelfieView)

-- TopBar
coroutine.wrap(safeRequire)(CoreGuiModules.TopBar)

if game:GetEngineFeature("LuobuModerationStatus") then
	coroutine.wrap(function()
		safeRequire(CoreGuiModules.Watermark)
	end)()
end

-- InExperienceIntervention
if FFlagInExperienceInterventionApp then
	coroutine.wrap(safeRequire)(CorePackages.Workspace.Packages.InExperienceIntervention)
end

-- MainBotChatScript (the Lua part of Dialogs)
ScriptContext:AddCoreScriptLocal("CoreScripts/MainBotChatScript2", RobloxGui)

if game:GetEngineFeature("ProximityPrompts") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ProximityPrompt", RobloxGui)
end

if FFlagMoveUGCValidationFunction and game:GetEngineFeature("ValidateUGCBodyAPIFeature") then
	require(CoreGuiModules.Server.UGCValidation.UGCValidationFunctionInstaller)()
end

coroutine.wrap(function() -- this is the first place we call, which can yield so wrap in coroutine
	ScriptContext:AddCoreScriptLocal("CoreScripts/ScreenTimeInGame", RobloxGui)
end)()

coroutine.wrap(function()
	if PolicyService:IsSubjectToChinaPolicies() then
		if not game:IsLoaded() then
			game.Loaded:Wait()
		end
		safeRequire(CoreGuiModules.LuobuWarningToast)
	end
end)()

-- Performance Stats Management
ScriptContext:AddCoreScriptLocal("CoreScripts/PerformanceStatsManagerScript", RobloxGui)

-- Default Alternate Death Ragdoll (China only for now)
ScriptContext:AddCoreScriptLocal("CoreScripts/PlayerRagdoll", RobloxGui)

-- Chat script
coroutine.wrap(safeRequire)(RobloxGui.Modules.ChatSelector)
coroutine.wrap(safeRequire)(RobloxGui.Modules.PlayerList.PlayerListManager)

local UserRoactBubbleChatBeta
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserRoactBubbleChatBeta")
	end)
	UserRoactBubbleChatBeta = success and value
end

if game:GetEngineFeature("EnableBubbleChatFromChatService") or UserRoactBubbleChatBeta then
	ScriptContext:AddCoreScriptLocal("CoreScripts/PlayerBillboards", RobloxGui)
end


if GetFFlagIrisAlwaysOnTopEnabled() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/IrisUpdateBubbleChat", RobloxGui)
end

-- Purchase Prompt Script
coroutine.wrap(function()
	local PurchasePrompt = safeRequire(CoreGuiModules.PurchasePrompt)

	if PurchasePrompt then
		PurchasePrompt.mountPurchasePrompt()
	end
end)()

-- Publish Asset Prompt
if FFlagAddPublishAssetPrompt then
	coroutine.wrap(safeRequire)(CoreGuiModules.PublishAssetPrompt)
end

-- Prompt Block Player Script
ScriptContext:AddCoreScriptLocal("CoreScripts/BlockPlayerPrompt", RobloxGui)
ScriptContext:AddCoreScriptLocal("CoreScripts/FriendPlayerPrompt", RobloxGui)

-- Avatar Context Menu
ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarContextMenu", RobloxGui)

-- Backpack!
coroutine.wrap(safeRequire)(RobloxGui.Modules.BackpackScript)

-- Keyboard Navigation :)
coroutine.wrap(safeRequire)(RobloxGui.Modules.KeyboardUINavigation)

-- Emotes Menu
coroutine.wrap(safeRequire)(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)

-- Screenshots
coroutine.wrap(safeRequire)(RobloxGui.Modules.Screenshots.ScreenshotsApp)

coroutine.wrap(safeRequire)(CoreGuiModules.AvatarEditorPrompts)

-- GamepadVirtualCursor
coroutine.wrap(safeRequire)(RobloxGui.Modules.VirtualCursor.VirtualCursorMain)

ScriptContext:AddCoreScriptLocal("CoreScripts/VehicleHud", RobloxGui)
ScriptContext:AddCoreScriptLocal("CoreScripts/InviteToGamePrompt", RobloxGui)

if UserInputService.TouchEnabled then -- touch devices don't use same control frame
	-- only used for touch device button generation
	ScriptContext:AddCoreScriptLocal("CoreScripts/ContextActionTouch", RobloxGui)

	RobloxGui:WaitForChild("ControlFrame")
	RobloxGui.ControlFrame:WaitForChild("BottomLeftControl")
	RobloxGui.ControlFrame.BottomLeftControl.Visible = false
end

ScriptContext:AddCoreScriptLocal("CoreScripts/InspectAndBuy", RobloxGui)

coroutine.wrap(function()
	if not VRService.VREnabled then
		VRService:GetPropertyChangedSignal("VREnabled"):Wait()
	end
	safeRequire(RobloxGui.Modules.VR.VRAvatarHeightScaling)
	safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
	safeRequire(RobloxGui.Modules.VR.UserGui)
end)()

-- Allows players to animate their hands in VR
coroutine.wrap(safeRequire)(RobloxGui.Modules.VR.VRAvatarGestures.VRAvatarGesturesClient)

ScriptContext:AddCoreScriptLocal("CoreScripts/NetworkPause", RobloxGui)

if GetFFlagScreenshotHudApi() and not PolicyService:IsSubjectToChinaPolicies() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ScreenshotHud", RobloxGui)
end

if getFFlagMicrophoneDevicePermissionsPromptLogging() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/MicrophoneDevicePermissionsLoggingInitializer", RobloxGui)
end

if game:GetEngineFeature("VoiceChatSupported") and GetFFlagEnableVoiceDefaultChannel() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/VoiceDefaultChannel", RobloxGui)
end
coroutine.wrap(function()
	local IXPServiceWrapper = require(CoreGuiModules.Common.IXPServiceWrapper)
	IXPServiceWrapper:InitializeAsync(localPlayer.UserId, GetCoreScriptsLayers())
	if IsExperienceMenuABTestEnabled() then
		ExperienceMenuABTestManager.default:initialize()
	end

	if GetFFlagShareInviteLinkContextMenuABTestEnabled() then
		ShareInviteLinkABTestManager.default:initialize()
	end

	if GetFFlagEnableNewInviteMenuIXP() then
		NewInviteMenuExperimentManager.default:initialize()
	end

	if GetFFlagReportAnythingAnnotationIXP() then
		TrustAndSafetyIXPManager.default:initialize()
	end
end)()

ScriptContext:AddCoreScriptLocal("CoreScripts/ExperienceChatMain", RobloxGui)

ScriptContext:AddCoreScriptLocal("CoreScripts/ChatEmoteUsage", script.Parent)

if FFlagLuaAppEnableToastNotificationsCoreScripts then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ToastNotificationGUI", script.Parent)
end

if GetFFlagRtMessaging() then
	game:GetService("RtMessagingService")
end

if game:GetEngineFeature("FacialAnimationStreaming2") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/FacialAnimationStreaming", script.Parent)
end

if FFlagAvatarChatCoreScriptSupport then
	ScriptContext:AddCoreScriptLocal("CoreScripts/FaceChatSelfieView", RobloxGui)

	if FFlagDebugAvatarChatVisualization then
		ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarChatDebugVisualization", script.Parent)
	end

	if game:GetEngineFeature("TrackerLodControllerDebugUI") then
		ScriptContext:AddCoreScriptLocal("CoreScripts/TrackerLodControllerDebugUI", script.Parent)
	end
end

if game:GetEngineFeature("NewMoodAnimationTypeApiEnabled") and game:GetFastFlag("MoodsEmoteFix3") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarMood", script.Parent)
end

ScriptContext:AddCoreScriptLocal("CoreScripts/PortalTeleportGUI", RobloxGui)

if game:GetEngineFeature("PortalAdPrompt") then
	if FFlagAdPortalTeleportPromptLua then
		ScriptContext:AddCoreScriptLocal("CoreScripts/AdTeleportPrompt", RobloxGui)
	end
end

coroutine.wrap(function()
	local AdsEudsaInit = safeRequire(CorePackages.Workspace.Packages.AdsEudsa)

	if AdsEudsaInit and AdsEudsaInit.starterScript then
		AdsEudsaInit.starterScript()
	end
end)()

-- premium sponsored experience reporting
if FFlagEnablePremiumSponsoredExperienceReporting then
	coroutine.wrap(function()
		local PremiumSponsoredExperienceReporting = safeRequire(CorePackages.Workspace.Packages.PremiumSponsoredExperienceReporting)
		if PremiumSponsoredExperienceReporting and PremiumSponsoredExperienceReporting.starterScript then
			PremiumSponsoredExperienceReporting.starterScript()
		end
	end)()
end

if game:GetEngineFeature("EnableAdGuiInteractivityControlRefactor") then
	coroutine.wrap(function()
		local AdGuiInteractivity = safeRequire(CorePackages.Workspace.Packages.AdGuiInteractivity)

		if AdGuiInteractivity and AdGuiInteractivity.starterScript then
			AdGuiInteractivity.starterScript()
		end
	end)()
end

if game:GetEngineFeature("EnableVoiceAttention") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/VoiceAttention", script.Parent)
end

if GetFFlagEnableSoundSessionTelemetry() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/SoundTelemetry", script.Parent)
end

coroutine.wrap(safeRequire)(CoreGuiModules.ApolloClient)

if GetFFlagContactListClientEnabled() then
	coroutine.wrap(safeRequire)(CoreGuiModules.ContactList)
end

if isCharacterNameHandlerEnabled() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CharacterNameHandler", script.Parent)
end

if GetFFlagVoiceUserAgency3() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/VoiceUserAgency", RobloxGui)
end

-- Mounts a react root that persists while the user is in-experience.
-- This allows us to use react-based listeners that trigger effects
ScriptContext:AddCoreScriptLocal("CoreScripts/CoreScriptsGlobalEffects", script.Parent)

local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
SoundManager.init()

if GetFFlagEnableSocialContextToast() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/SocialContextToast", RobloxGui)
end

if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/GameInviteModalGUI", script.Parent)
end

if FFlagEnableExperienceNotificationPrompts then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ExperienceNotifications", script.Parent)
end

local InExpAchievementManager = require(CorePackages.Workspace.Packages.Achievements).InExpAchievementManager
local achievementManager = InExpAchievementManager.new()
achievementManager:startUp()

local GetFFlagPlayerViewRemoteEnabled = require(RobloxGui.Modules.Common.Flags.GetFFlagPlayerViewRemoteEnabled)
if GetFFlagPlayerViewRemoteEnabled() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/PlayerView", RobloxGui)
end

if FFlagEnableSendCameraAccessAnalytics then
	ScriptContext:AddCoreScriptLocal("CoreScripts/SendCameraAccessAnalytics", RobloxGui)
end

if FFlagEnableBulkPurchaseApp then
	ScriptContext:AddCoreScriptLocal("CoreScripts/BulkPurchaseApp", RobloxGui)
end

if AudioFocusManagementEnabled then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ExperienceAudioFocusBinder", RobloxGui)
end

if FFlagEnableCancelSubscriptionApp and FFlagEnableCancelSubscriptionAppLua then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CancelSubscriptionApp", RobloxGui)
end

if FFlagCoreGuiEnableAnalytics then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CoreGuiEnableAnalytics", RobloxGui)
end

local GetFFlagEnableConnectCaptureEvents =
	require(RobloxGui.Modules.Common.Flags.GetFFlagEnableConnectCaptureEvents)

if GetFFlagEnableConnectCaptureEvents() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ConnectCaptureEvents", script.Parent)
end

if FFlagEnableExperienceGenericChallengeRendering then
	-- Initializes the in-experience challenge interceptor, used to handle
	-- rendering challenges such as 2-Step-Verification on suspicious actions e.g. economic actions.
	coroutine.wrap(function()
		local initChallengeInterceptor = require(CorePackages.Workspace.Packages.GenericChallenges).Middleware.InitExperienceChallengeInterceptor
		initChallengeInterceptor()
	end)()
end
