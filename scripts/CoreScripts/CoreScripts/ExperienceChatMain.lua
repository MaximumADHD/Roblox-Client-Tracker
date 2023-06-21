--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

-- Wait for the game to be Loaded before checking ChatVersion
-- Otherwise it will always return its default value.
local _ = game:IsLoaded() or game.Loaded:Wait()
if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
	return
end

local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local ApolloClient = require(RobloxGui.Modules.ApolloClient)
local ExperienceChat = require(CorePackages.ExperienceChat)
local FFlagEnableSetCoreGuiEnabledExpChat = game:DefineFastFlag("FFlagEnableSetCoreGuiEnabledExpChat", false)
local FFlagExperienceChatSiblingZIndexBehavior = game:DefineFastFlag("ExperienceChatSiblingZIndexBehavior", false)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local getFFlagAddApolloClientToExperienceChat = require(RobloxGui.Modules.Flags.getFFlagAddApolloClientToExperienceChat)
local GetFFlagDisableBubbleChatForExpChat = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDisableBubbleChatForExpChat

local getIconVoiceIndicator
local onClickedVoiceIndicator
if GetFFlagDisableBubbleChatForExpChat() then
	getIconVoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.getIconVoiceIndicator)
	onClickedVoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.onClickedVoiceIndicator)
end

local onClickedCameraIndicator
local getPermissions
local selfViewListenerChanged
if FFlagAvatarChatCoreScriptSupport then
	onClickedCameraIndicator = require(RobloxGui.Modules.VoiceChat.Components.onClickedCameraIndicator)
	getPermissions = require(RobloxGui.Modules.VoiceChat.Components.getPermissions)
	selfViewListenerChanged = require(RobloxGui.Modules.VoiceChat.Components.selfViewListenerChanged)
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

local createdDefaultChannels = TextChatService.CreateDefaultTextChannels
ExperienceChat.mountClientApp({
	apolloClient = if getFFlagAddApolloClientToExperienceChat() then ApolloClient else nil,
	getIconVoiceIndicator = if getIconVoiceIndicator then getIconVoiceIndicator else nil,
	onClickedVoiceIndicator = if onClickedVoiceIndicator then onClickedVoiceIndicator else nil,
	onClickedCameraIndicator = if onClickedCameraIndicator then onClickedCameraIndicator else nil,
	getPermissions = if getPermissions then getPermissions else nil,
	selfViewListenerChanged = if selfViewListenerChanged then selfViewListenerChanged else nil,
	defaultTargetTextChannel = if createdDefaultChannels then findTextChannel("RBXGeneral") else nil,
	defaultSystemTextChannel = if createdDefaultChannels then findTextChannel("RBXSystem") else nil,
	translator = RobloxTranslator :: any,
	parent = screenGui,
})
