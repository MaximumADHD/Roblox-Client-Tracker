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

-- Load the error reporter as early as possible, even before we finish requiring,
-- so that it can report any errors that come after this point.
ScriptContext:AddCoreScriptLocal("CoreScripts/CoreScriptErrorReporter", RobloxGui)

local Roact = require(CorePackages.Packages.Roact)
local ReactScheduler = require(CorePackages.Packages.Scheduler)
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local FFlagUseRoactGlobalConfigInCoreScripts = require(RobloxGui.Modules.Flags.FFlagUseRoactGlobalConfigInCoreScripts)

local GetFFlagScreenshotHudApi = require(RobloxGui.Modules.Flags.GetFFlagScreenshotHudApi)

local GetFFlagEnableNewInviteMenuIXP = require(CoreGuiModules.Flags.GetFFlagEnableNewInviteMenuIXP)
local NewInviteMenuExperimentManager = require(CoreGuiModules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)
local GetFFlagEnableSoundSessionTelemetry = require(CoreGuiModules.Flags.GetFFlagEnableSoundSessionTelemetry)
local GetFFlagReportAnythingAnnotationIXP =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagReportAnythingAnnotationIXP
local TrustAndSafetyIXPManager = require(CorePackages.Workspace.Packages.TrustAndSafetyIxp).TrustAndSafetyIXPManager

local GetCoreScriptsLayers = require(CoreGuiModules.Experiment.GetCoreScriptsLayers)

local GetFFlagRtMessaging = require(RobloxGui.Modules.Flags.GetFFlagRtMessaging)
local GetFFlagContactListClientEnabled = require(RobloxGui.Modules.Common.Flags.GetFFlagContactListClientEnabled)
local FFlagAddPublishAssetPrompt = game:DefineFastFlag("AddPublishAssetPrompt6", false)
local isCharacterNameHandlerEnabled = require(CorePackages.Workspace.Packages.SharedFlags).isCharacterNameHandlerEnabled
local GetFFlagEnableSocialContextToast =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableSocialContextToast
local GetFFlagEnableAppChatInExperience =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableAppChatInExperience
local GetFFlagChromeCentralizedConfiguration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeCentralizedConfiguration
local GetFFlagEnableCrossExpVoice = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice
local FStringReactSchedulingContext = require(CorePackages.Workspace.Packages.SharedFlags).FStringReactSchedulingContext

local FFlagLuaAppEnableToastNotificationsCoreScripts =
	game:DefineFastFlag("LuaAppEnableToastNotificationsCoreScripts4", false)

local FFlagDisableLuobuWarningToast = game:DefineFastFlag("DisableLuobuWarningToast", false)

local GetFFlagVoiceUserAgency3 = require(RobloxGui.Modules.Flags.GetFFlagVoiceUserAgency3)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification =
	require(RobloxGui.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)

local FFlagEnableSendCameraAccessAnalytics = game:DefineFastFlag("EnableSendCameraAccessAnalytics", false)

local FFlagEnableExperienceNotificationPrompts = game:DefineFastFlag("EnableExperienceNotificationPrompts2", false)
local FFlagEnablePremiumSponsoredExperienceReporting =
	game:DefineFastFlag("EnablePremiumSponsoredExperienceReporting", false)
local FFlagEnableCancelSubscriptionApp = game:GetEngineFeature("EnableCancelSubscriptionApp")
local FFlagEnableCancelSubscriptionAppLua = game:DefineFastFlag("EnableCancelSubscriptionAppLua", false)
local AudioFocusManagementEnabled = game:GetEngineFeature("AudioFocusManagement")
local FFlagEnableExperienceGenericChallengeRenderingOnLoadingScript =
	game:DefineFastFlag("EnableExperienceGenericChallengeRenderingOnLoadingScript", false)
local FFlagEnableRobloxCommerce = game:GetEngineFeature("EnableRobloxCommerce")
local FFlagEnableLinkSharingEvent = game:DefineFastFlag("EnableLinkSharingEvent", false)
local FFlagPlayerFeedbackPromptEnabled = game:GetEngineFeature("PlayerFeedbackEnabled")
local FFlagLuaAppInExperienceDetailsPrompt =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagLuaAppInExperienceDetailsPrompt
local FFlagEnableSystemScrim = game:DefineFastFlag("EnableSystemScrim", false)
local FFlagEnableCoreUISystem = game:DefineFastFlag("EnableCoreUISystemV2", false)
local FFlagEnableNewBackpack = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableNewBackpack
local FFlagEnableCorescriptsProfiler = game:DefineFastFlag("EnableCorescriptsProfiler", false)
local FFlagCoreScriptsProfilerTelemetryContext = game:DefineFastFlag("CoreScriptsProfilerTelemetryContext", false)
local FFlagSelfieFrontendConsoleDesktop = game:DefineFastFlag("SelfieFrontendConsoleDesktop3", false)
	and game:GetEngineFeature("EnableSelfieQRCode")
local GetEngineFeatureEnablePromptRobuxTransfer =
	require(CorePackages.Workspace.Packages.SharedFlags).GetEngineFeatureEnablePromptRobuxTransfer
local UIBlox = require(CorePackages.Packages.UIBlox)
local uiBloxConfig = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).UIBloxInGameConfig
UIBlox.init(uiBloxConfig)

if FFlagEnableCoreUISystem then
	require(CorePackages.Workspace.Packages.System)
end

local InExperienceTopBar = require(CorePackages.Workspace.Packages.InExperienceTopBar)
local FFlagTopBarRefactor = InExperienceTopBar.Flags.FFlagTopBarRefactor

local ExperimentCacheManager = require(CorePackages.Workspace.Packages.ExperimentCacheManager).ExperimentCacheManager
ExperimentCacheManager.default:initialize()

-- Add a label for internal React telemetry
local FFlagReactTelemetryEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagReactTelemetryEnabled
if FFlagReactTelemetryEnabled then
	local ReactTelemetry = require(CorePackages.Packages.ReactTelemetry)
	ReactTelemetry.customFields.context = "in_experience"
end

-- Set up HttpStore
local FFlagLuaAppUseAppHttpStore = game:DefineFastFlag("LuaAppUseAppHttpStoreInExperience", false)
if FFlagLuaAppUseAppHttpStore then
	local HttpStore = require(CorePackages.Workspace.Packages.HttpStore)
	HttpStore.Instance._create({})
end

-- Set up React Scheduler experiment

local GetReactSchedulerIXPConfig = require(CorePackages.Workspace.Packages.SharedFlags).GetReactSchedulerIXPConfig
local ReactSchedulerConfig = GetReactSchedulerIXPConfig()
if ReactSchedulerConfig then
	ReactScheduler.unstable_setSchedulerFlags(ReactSchedulerConfig)
end

local FFlagEnableAEGIS2CommsFAEUpsell =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableAEGIS2CommsFAEUpsell

local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

if game:GetEngineFeature("SoundServiceControlsDefaultListenerLocation") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/DefaultListenerLocation", script.Parent)
end

if GetFFlagEnableAppChatInExperience() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/AppChatMain", RobloxGui)
end

if GetFFlagEnableCrossExpVoice() then
	local CrossExperienceVoiceIXPManager = require(CorePackages.Workspace.Packages.CrossExperienceVoice).IXPManager
	CrossExperienceVoiceIXPManager.default:initialize()
end

-- Initialize SessionManager
local _inExperienceSessionization = require(CorePackages.Workspace.Packages.InExperienceSessionization)

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled()
if ChromeEnabled then
	local ExperienceChat = require(CorePackages.Workspace.Packages.ExpChat)
	ExperienceChat.GlobalFlags.AvatarChatEnabled = false
	ExperienceChat.GlobalFlags.ChromeEnabled = true
end

local GetFFlagJoinWithoutMicPermissions =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions
if GetFFlagJoinWithoutMicPermissions() then
	local ExperienceChat = require(CorePackages.Workspace.Packages.ExpChat) :: any
	ExperienceChat.GlobalFlags.JoinWithoutMicPermissions = true
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

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
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

-- Chrome
if GetFFlagChromeCentralizedConfiguration() then
	coroutine.wrap(safeRequire)(CoreGuiModules.Chrome.ConfigureChrome)
end

-- SelfieView
coroutine.wrap(safeRequire)(CoreGuiModules.SelfieView)

-- TopBar
coroutine.wrap(safeRequire)(CoreGuiModules.TopBar)

-- SideSheet
local FFlagEnableSideSheet = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableSideSheet
if FFlagEnableSideSheet then
	coroutine.wrap(safeRequire)(CoreGuiModules.InExperienceSideSheet)
end

-- BuildExperience ChatSheet
local FFlagAppNavMyStatsTab = require(CorePackages.Workspace.Packages.SharedFlags).FFlagAppNavMyStatsTab
if FFlagAppNavMyStatsTab then
	local BuildExperience = coroutine.wrap(safeRequire)(CorePackages.Workspace.Packages.BuildExperience)
	if BuildExperience and BuildExperience.BuildModeLaunch:hasBuildMode() then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
		BuildExperience.mountBuildControls()
		BuildExperience.mountChatSheet()
		BuildExperience.mountPublishGameSheet()
	end
end

if FFlagTopBarRefactor then
	local InExperienceOverlay = coroutine.wrap(safeRequire)(CorePackages.Workspace.Packages.InExperienceOverlay)
	if InExperienceOverlay then
		InExperienceOverlay.createOverlay()
	end
end

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

if game:GetEngineFeature("ValidateUGCBodyAPIFeature") then
	require(CoreGuiModules.Server.UGCValidation.UGCValidationFunctionInstaller)()
end

coroutine.wrap(function() -- this is the first place we call, which can yield so wrap in coroutine
	ScriptContext:AddCoreScriptLocal("CoreScripts/ScreenTimeInGame", RobloxGui)
end)()

if not FFlagDisableLuobuWarningToast then
	coroutine.wrap(function()
		if CachedPolicyService:IsSubjectToChinaPolicies() then
			if not game:IsLoaded() then
				game.Loaded:Wait()
			end
			safeRequire(CoreGuiModules.LuobuWarningToast)
		end
	end)()
end

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

-- Purchase Prompt Script
coroutine.wrap(function()
	local PurchasePrompt = safeRequire(CorePackages.Workspace.Packages.PurchasePrompt)

	if PurchasePrompt then
		PurchasePrompt.mountPurchasePrompt()
	end
end)()

-- Publish Asset Prompt
if FFlagAddPublishAssetPrompt then
	coroutine.wrap(safeRequire)(CoreGuiModules.PublishAssetPrompt)
end

coroutine.wrap(safeRequire)(CoreGuiModules.ExperienceEvents.ExperienceEventsApp)

if FFlagPlayerFeedbackPromptEnabled then
	coroutine.wrap(safeRequire)(CoreGuiModules.PlayerFeedback)
end

coroutine.wrap(safeRequire)(CoreGuiModules.Groups.GroupsApp)

coroutine.wrap(safeRequire)(CoreGuiModules.AvatarGeneration.SelfieConsent)

if FFlagSelfieFrontendConsoleDesktop then
	coroutine.wrap(safeRequire)(CoreGuiModules.AvatarGeneration.SelfieQr)
end

-- Prompt Block Player Script
ScriptContext:AddCoreScriptLocal("CoreScripts/BlockPlayerPrompt", RobloxGui)
ScriptContext:AddCoreScriptLocal("CoreScripts/FriendPlayerPrompt", RobloxGui)

-- Avatar Context Menu
ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarContextMenu", RobloxGui)

-- Backpack!
if FFlagEnableNewBackpack then
	require(CorePackages.Workspace.Packages.Backpack)
else
	coroutine.wrap(safeRequire)(RobloxGui.Modules.BackpackScript)
end

-- Keyboard Navigation :)
coroutine.wrap(safeRequire)(RobloxGui.Modules.KeyboardUINavigation)

-- Emotes Menu
coroutine.wrap(safeRequire)(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)

-- CapturesApp
coroutine.wrap(safeRequire)(RobloxGui.Modules.Captures.CapturesApp)

coroutine.wrap(safeRequire)(CoreGuiModules.AvatarEditorPrompts)

local FFlagVirtualCursorModularization =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagVirtualCursorModularization
-- GamepadVirtualCursor
if FFlagVirtualCursorModularization then
	coroutine.wrap(safeRequire)(CorePackages.Workspace.Packages.VirtualCursorModular)
else
	coroutine.wrap(safeRequire)(CorePackages.Workspace.Packages.VirtualCursor)
end

ScriptContext:AddCoreScriptLocal("CoreScripts/VehicleHud", RobloxGui)
ScriptContext:AddCoreScriptLocal("CoreScripts/InviteToGamePrompt", RobloxGui)

local hasTouchSupport = if game:GetEngineFeature("TouchScreenEnabled")
	then UserInputService.TouchScreenEnabled
	else UserInputService.TouchEnabled

if hasTouchSupport then -- touch devices don't use same control frame
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

if GetFFlagScreenshotHudApi() and not CachedPolicyService:IsSubjectToChinaPolicies() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ScreenshotHud", RobloxGui)
end

ScriptContext:AddCoreScriptLocal("CoreScripts/MicrophoneDevicePermissionsLoggingInitializer", RobloxGui)

if game:GetEngineFeature("VoiceChatSupported") then
	ScriptContext:AddCoreScriptLocal("CoreScripts/VoiceDefaultChannel", RobloxGui)
end
coroutine.wrap(function()
	local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
	IXPServiceWrapper:InitializeAsync(localPlayer.UserId, GetCoreScriptsLayers())

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

ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarMood", script.Parent)

ScriptContext:AddCoreScriptLocal("CoreScripts/PortalTeleportGUI", RobloxGui)

coroutine.wrap(function()
	local AdsEudsaInit = safeRequire(CorePackages.Workspace.Packages.AdsEudsa)

	if AdsEudsaInit and AdsEudsaInit.starterScript then
		AdsEudsaInit.starterScript()
	end
end)()

-- premium sponsored experience reporting
if FFlagEnablePremiumSponsoredExperienceReporting then
	coroutine.wrap(function()
		local PremiumSponsoredExperienceReporting =
			safeRequire(CorePackages.Workspace.Packages.PremiumSponsoredExperienceReporting)
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
coroutine.wrap(function()
	local EnhancedVideo = safeRequire(CorePackages.Workspace.Packages.EnhancedVideo)

	if EnhancedVideo and EnhancedVideo.starterScript then
		EnhancedVideo.starterScript()
	end
end)()

coroutine.wrap(function()
	local InExperienceClickout = safeRequire(CorePackages.Workspace.Packages.InExperienceClickout)

	if InExperienceClickout and InExperienceClickout.starterScript then
		InExperienceClickout.starterScript()
	end
end)()

if game:GetEngineFeature("EnableLuaAdPlayer") then
	safeRequire(CorePackages.Workspace.Packages.AdPlayer).init()
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

ScriptContext:AddCoreScriptLocal("CoreScripts/BulkPurchaseApp", RobloxGui)

if GetEngineFeatureEnablePromptRobuxTransfer() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/InExperienceTransferApp", RobloxGui)
end

if AudioFocusManagementEnabled then
	ScriptContext:AddCoreScriptLocal("CoreScripts/ExperienceAudioFocusBinder", RobloxGui)
end

if FFlagEnableCancelSubscriptionApp and FFlagEnableCancelSubscriptionAppLua then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CancelSubscriptionApp", RobloxGui)
end

if FFlagEnableRobloxCommerce then
	ScriptContext:AddCoreScriptLocal("CoreScripts/CommercePurchaseApp", RobloxGui)
end

if FFlagEnableSystemScrim then
	ScriptContext:AddCoreScriptLocal("CoreScripts/SystemScrim", RobloxGui)
end

ScriptContext:AddCoreScriptLocal("CoreScripts/CoreGuiEnableAnalytics", RobloxGui)

if FFlagEnableLinkSharingEvent then
	ScriptContext:AddCoreScriptLocal("CoreScripts/OpenShareSheetWithLink", RobloxGui)
end

if FFlagLuaAppInExperienceDetailsPrompt then
	ScriptContext:AddCoreScriptLocal("CoreScripts/InExperienceDetailsPrompt", RobloxGui)
end

if not FFlagEnableExperienceGenericChallengeRenderingOnLoadingScript then
	-- Initializes the in-experience challenge interceptor, used to handle
	-- rendering challenges such as 2-Step-Verification on suspicious actions e.g. economic actions.
	coroutine.wrap(function()
		local initChallengeInterceptor =
			require(CorePackages.Workspace.Packages.GenericChallenges).Middleware.InitExperienceChallengeInterceptor
		initChallengeInterceptor()
	end)()
end

local ReactPerfTracker = require(CoreGuiModules.Common.ReactPerfTracker)
if ReactPerfTracker then
	local reactPerfTracker = ReactPerfTracker.new()
	-- delay for 5 seconds to reduce startup noise
	task.delay(5, function()
		reactPerfTracker:start()
	end)
end

local FIntReactSchedulingTrackerStartUpDelayMs = game:DefineFastInt("ReactSchedulingTrackerStartUpDelayMs", 5000)
local ReactSchedulingDelaySeconds = FIntReactSchedulingTrackerStartUpDelayMs / 1000

local ReactSchedulingTracker = require(CoreGuiModules.Common.ReactSchedulingTracker)
-- delay to reduce startup noise
task.delay(ReactSchedulingDelaySeconds, function()
	(ReactSchedulingTracker :: ReactSchedulingTracker.ReactSchedulingTracker):start()
end)

local Memory = require(CorePackages.Workspace.Packages.Memory)
Memory.start(true, FStringReactSchedulingContext, Memory.MemoryScope.InExperience)

if game:GetEngineFeature("RecordingServicePlaybackApiLua") then
	coroutine.wrap(safeRequire)(CorePackages.Workspace.Packages.ExperienceStateReplay)
end

if FFlagEnableAEGIS2CommsFAEUpsell then
	coroutine.wrap(function()
		local SocialUpsell = safeRequire(CorePackages.Workspace.Packages.SocialUpsell)

		if SocialUpsell then
			SocialUpsell.Overlay.initializeInExpOverlay()
		end
	end)()
end
coroutine.wrap(function()
	local Display = safeRequire(CorePackages.Workspace.Packages.Display)
	GuiService:GetPropertyChangedSignal("TopbarInset"):Connect(function()
		Display.GetDisplayStore().setTopBarHeight(GuiService.TopbarInset.Height)
	end)
end)()

if FFlagEnableCorescriptsProfiler then
	local CoreScriptsProfilerTelemetry =
		require(CorePackages.Workspace.Packages.CoreScriptsProfiler).CoreScriptsProfilerTelemetry

	if CoreScriptsProfilerTelemetry then
		-- Start the telemetry system
		local context = nil
		if FFlagCoreScriptsProfilerTelemetryContext then
			context = FStringReactSchedulingContext
		end
		local coreScriptsProfilerTelemetry = CoreScriptsProfilerTelemetry(context)
		coreScriptsProfilerTelemetry:start()
	end
end
