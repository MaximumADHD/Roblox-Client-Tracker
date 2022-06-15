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
local ExperienceChat = require(CorePackages.ExperienceChat)
local FFlagEnableSetCoreGuiEnabledExpChat = game:DefineFastFlag("FFlagEnableSetCoreGuiEnabledExpChat", false)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExperienceChat"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = -1 -- Set DisplayOrder to -1 to rest behind the SettingsHub
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
	local SetCoreGuiEnabledChanged = ExperienceChat.ChatVisibility.Actions.SetCoreGuiEnabledChanged
	if SetCoreGuiEnabledChanged then
		StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
			if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.Chat then
				ExperienceChat.DispatchBindableEvent:Fire(SetCoreGuiEnabledChanged(enabled))
			end
		end)
	end
end

if game:DefineFastFlag("ExpChatShouldNotYieldWithoutDefaultChannels", false) then
	local createdDefaultChannels = TextChatService.CreateDefaultTextChannels
	ExperienceChat.mountClientApp({
		defaultTargetTextChannel = if createdDefaultChannels then findTextChannel("RBXGeneral") else nil,
		defaultSystemTextChannel = if createdDefaultChannels then findTextChannel("RBXSystem") else nil,
		translator = RobloxTranslator :: any,
		parent = screenGui,
	})
else
	ExperienceChat.mountClientApp({
		defaultTargetTextChannel = findTextChannel("RBXGeneral"),
		defaultSystemTextChannel = findTextChannel("RBXSystem"),
		translator = RobloxTranslator :: any,
		parent = screenGui,
	})
end
