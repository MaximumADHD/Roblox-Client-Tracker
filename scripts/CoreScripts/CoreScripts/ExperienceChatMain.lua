--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)

local GetFFlagConsolidateBubbleChat = require(RobloxGui.Modules.Flags.GetFFlagConsolidateBubbleChat)

-- Wait for the game to be Loaded before checking ChatVersion
-- Otherwise it will always return its default value.
local _ = game:IsLoaded() or game.Loaded:Wait()
if not GetFFlagConsolidateBubbleChat() then
	if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
		return
	end
end

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local ApolloClient = require(RobloxGui.Modules.ApolloClient)
local ExperienceChat = require(CorePackages.ExperienceChat)
local FFlagEnableSetCoreGuiEnabledExpChat = game:DefineFastFlag("FFlagEnableSetCoreGuiEnabledExpChat", false)
local FFlagExperienceChatSiblingZIndexBehavior = game:DefineFastFlag("ExperienceChatSiblingZIndexBehavior", false)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local getFFlagAddApolloClientToExperienceChat = require(RobloxGui.Modules.Flags.getFFlagAddApolloClientToExperienceChat)
local getFFlagDoNotPromptCameraPermissionsOnMount = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local GetFFlagRemoveInGameChatBubbleChatReferences = require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)
local getFFlagRenderVoiceBubbleAfterAsyncInit = require(RobloxGui.Modules.Flags.getFFlagRenderVoiceBubbleAfterAsyncInit)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()

local getIconVoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.getIconVoiceIndicator)
local onClickedVoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.onClickedVoiceIndicator)

local onClickedCameraIndicator
local getPermissions
local selfViewListenerChanged
local displayCameraDeniedToast
local isCamEnabledForUserAndPlace
local isCameraOnlyUser
local isVoiceServiceInitialized

if FFlagAvatarChatCoreScriptSupport then
	onClickedCameraIndicator = require(RobloxGui.Modules.VoiceChat.Components.onClickedCameraIndicator)
	getPermissions = require(RobloxGui.Modules.VoiceChat.Components.getPermissions)
	selfViewListenerChanged = require(RobloxGui.Modules.VoiceChat.Components.selfViewListenerChanged)

	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		displayCameraDeniedToast = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast)
		if GetFFlagRemoveInGameChatBubbleChatReferences() then
			displayCameraDeniedToast = require(RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast)
		end
		isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
	end

	if getFFlagEnableAlwaysAvailableCamera() then
		isCameraOnlyUser = require(RobloxGui.Modules.Settings.isCameraOnlyUser)
	end

	if getFFlagRenderVoiceBubbleAfterAsyncInit() then
		isVoiceServiceInitialized = require(RobloxGui.Modules.VoiceChat.Components.isVoiceServiceInitialized)
	end
end

if ChromeEnabled then
	getPermissions = require(RobloxGui.Modules.VoiceChat.Components.getPermissions)
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExperienceChat"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = -1 -- Set DisplayOrder to -1 to rest behind the SettingsHub
if FFlagExperienceChatSiblingZIndexBehavior then
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end
screenGui.Parent = CoreGui

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
local validateLegacyBubbleChatSettings
if GetFFlagConsolidateBubbleChat() then
	createdDefaultChannels = TextChatService.ChatVersion == Enum.ChatVersion.TextChatService
	validateLegacyBubbleChatSettings = require(RobloxGui.Modules.InGameChat.BubbleChat.Types).IChatSettings
else
	createdDefaultChannels = TextChatService.CreateDefaultTextChannels
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
	validateLegacyBubbleChatSettings = if validateLegacyBubbleChatSettings then validateLegacyBubbleChatSettings else nil,
	isVoiceServiceInitialized = if isVoiceServiceInitialized then isVoiceServiceInitialized else nil,
	translator = RobloxTranslator :: any,
	parent = screenGui,
})
