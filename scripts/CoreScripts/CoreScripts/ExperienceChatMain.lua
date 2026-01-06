--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui.RobloxGui
local FFlagEnableUIManagerPackgify = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUIManagerPackgify
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local PanelType
local UIManager
local SpatialUIType
if isInExperienceUIVREnabled or FFlagEnableUIManagerPackgify then
	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	PanelType = VrSpatialUi.Constants.PanelType
	UIManager = VrSpatialUi.UIManager
	SpatialUIType = VrSpatialUi.Constants.SpatialUIType
else
	local CoreGuiModules = RobloxGui:WaitForChild("Modules")
	local UIManagerFolder = CoreGuiModules:WaitForChild("UIManager")
	local Constants = require(UIManagerFolder.Constants)
	PanelType = Constants.PanelType
	UIManager = require(UIManagerFolder.UIManager)
	SpatialUIType = Constants.SpatialUIType
end

if game:DefineFastFlag("DebugExpChat", false) then
	local ExpChatDebug = require(CorePackages.Workspace.Packages.ExpChatDebug)
	ExpChatDebug.start()
end

-- Wait for the game to be Loaded before checking ChatVersion
-- Otherwise it will always return its default value.
local _ = game:IsLoaded() or game.Loaded:Wait()

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local GameTranslator = require(RobloxGui.Modules.GameTranslator)
local ApolloClient = require(RobloxGui.Modules.ApolloClient)
local ExperienceChat = require(CorePackages.Workspace.Packages.ExpChat)
local FFlagEnableSetCoreGuiEnabledExpChat = game:DefineFastFlag("FFlagEnableSetCoreGuiEnabledExpChat", false)
local FFlagAvatarChatCoreScriptSupport =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local getFFlagAddApolloClientToExperienceChat = require(RobloxGui.Modules.Flags.getFFlagAddApolloClientToExperienceChat)
local getFFlagDoNotPromptCameraPermissionsOnMount =
	require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local getFFlagRenderVoiceBubbleAfterAsyncInit = require(RobloxGui.Modules.Flags.getFFlagRenderVoiceBubbleAfterAsyncInit)
local GetFFlagShowLikelySpeakingBubbles =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagShowLikelySpeakingBubbles
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local IsSpatialRobloxGuiEnabled = require(RobloxGui.Modules.VR.IsSpatialRobloxGuiEnabled)
local getFFlagExpChatAlwaysRunTCS = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagExpChatAlwaysRunTCS

local getIconVoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.getIconVoiceIndicator)
local onClickedVoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.onClickedVoiceIndicator)

local onClickedCameraIndicator
local getPermissions
local selfViewListenerChanged
local displayCameraDeniedToast
local isCamEnabledForUserAndPlace
local isCameraOnlyUser
local isVoiceServiceInitialized
local onClickedLikelySpeakingBubble

if FFlagAvatarChatCoreScriptSupport then
	onClickedCameraIndicator = require(RobloxGui.Modules.VoiceChat.Components.onClickedCameraIndicator)
	getPermissions = require(RobloxGui.Modules.VoiceChat.Components.getPermissions)
	selfViewListenerChanged = require(RobloxGui.Modules.VoiceChat.Components.selfViewListenerChanged)

	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		displayCameraDeniedToast = require(RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast)
		isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
	end

	if getFFlagEnableAlwaysAvailableCamera() then
		isCameraOnlyUser = require(RobloxGui.Modules.Settings.isCameraOnlyUser)
	end

	if getFFlagRenderVoiceBubbleAfterAsyncInit() then
		isVoiceServiceInitialized = require(RobloxGui.Modules.VoiceChat.Components.isVoiceServiceInitialized)
	end
end

if GetFFlagShowLikelySpeakingBubbles() then
	onClickedLikelySpeakingBubble = require(RobloxGui.Modules.VoiceChat.Components.onClickedLikelySpeakingBubble)
end

if ChromeEnabled then
	getPermissions = require(RobloxGui.Modules.VoiceChat.Components.getPermissions)
end

local screenGui
local spatialUIStruct
if IsSpatialRobloxGuiEnabled then
	local panelProps = {
		panelType = PanelType.Chat,
		screenGuiProps = {
			Name = "ExperienceChat",
			ResetOnSpawn = false,
			DisplayOrder = -1, -- Set DisplayOrder to -1 to rest behind the SettingsHub
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
	}
	local uiCreationResult = UIManager.getInstance():createUI(panelProps)
	screenGui = uiCreationResult.panelObject
	spatialUIStruct = uiCreationResult
	if isInExperienceUIVREnabled then
		local Observable = require(CorePackages.Workspace.Packages.Observable)
		local ChatSelector = require(CoreGui.RobloxGui.Modules.ChatSelector)
		local chatVisibilityValue = Observable.ObservableValue.new(ChatSelector:GetVisibility())
		ChatSelector.VisibilityStateChanged:connect(function(visible)
			chatVisibilityValue:set(visible)
		end)
		UIManager.getInstance():connectPanelVisibility(panelProps.panelType, chatVisibilityValue)
	end
else
	screenGui = Instance.new("ScreenGui")
	screenGui.Name = "ExperienceChat"
	screenGui.ResetOnSpawn = false
	screenGui.DisplayOrder = -1 -- Set DisplayOrder to -1 to rest behind the SettingsHub
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = CoreGui
end

local function findTextChannel(name: string): TextChannel
	local textChannel = TextChatService:FindFirstChild(name, true)
	while not textChannel do
		wait()
		textChannel = TextChatService:FindFirstChild(name, true)
	end

	return textChannel
end

if FFlagEnableSetCoreGuiEnabledExpChat then
	StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
		if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.Chat then
			ExperienceChat.Events.SetCoreGuiEnabledChanged(enabled)
		end
	end)
end

local createdDefaultChannels
local validateLegacyBubbleChatSettings = require(RobloxGui.Modules.InGameChat.BubbleChat.Types).IChatSettings
if getFFlagExpChatAlwaysRunTCS() then
	createdDefaultChannels = TextChatService.CreateDefaultTextChannels
else
	createdDefaultChannels = TextChatService.ChatVersion == Enum.ChatVersion.TextChatService
		and TextChatService.CreateDefaultTextChannels
end

ExperienceChat.mountClientApp({
	apolloClient = if getFFlagAddApolloClientToExperienceChat() then ApolloClient else nil,
	getIconVoiceIndicator = if getIconVoiceIndicator then getIconVoiceIndicator else nil,
	onClickedVoiceIndicator = if onClickedVoiceIndicator then onClickedVoiceIndicator else nil,
	onClickedCameraIndicator = if onClickedCameraIndicator then onClickedCameraIndicator else nil,
	displayCameraDeniedToast = if displayCameraDeniedToast then displayCameraDeniedToast else nil,
	isCamEnabledForUserAndPlace = if isCamEnabledForUserAndPlace then isCamEnabledForUserAndPlace else nil,
	isCameraOnlyUser = if isCameraOnlyUser then isCameraOnlyUser else nil,
	getPermissions = if getPermissions then getPermissions else nil,
	selfViewListenerChanged = if selfViewListenerChanged then selfViewListenerChanged else nil,
	defaultTargetTextChannel = if createdDefaultChannels then findTextChannel("RBXGeneral") else nil,
	defaultSystemTextChannel = if createdDefaultChannels then findTextChannel("RBXSystem") else nil,
	validateLegacyBubbleChatSettings = if validateLegacyBubbleChatSettings
		then validateLegacyBubbleChatSettings
		else nil,
	isVoiceServiceInitialized = if isVoiceServiceInitialized then isVoiceServiceInitialized else nil,
	onClickedLikelySpeakingBubble = if onClickedLikelySpeakingBubble then onClickedLikelySpeakingBubble else nil,
	translator = RobloxTranslator :: any,
	gameTranslator = GameTranslator :: any,
	parent = screenGui,
	isSpatialUIEnabled = (spatialUIStruct and spatialUIStruct.type == SpatialUIType.SpatialUI),
})
