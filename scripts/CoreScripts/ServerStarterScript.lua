--!nonstrict
--[[
		// Filename: ServerStarterScript.lua
		// Version: 1.0
		// Description: Server core script that handles core script server side logic.
]]--

local runService = game:GetService('RunService')

-- Prevent server script from running in Studio when not in run mode
while not runService:IsRunning() do
	wait()
end

--[[ Services ]]--
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
local ScriptContext = game:GetService('ScriptContext')
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)

--[[
	NOTE: We need to initify the instance hierarchy as early as possible
	to avoid spurious require errors. Only call require() and
	AddCoreScriptLocal() AFTER this block.
]]
local initify = require(CorePackages.initify)
initify(CorePackages)
initify(RobloxGui.Modules)

--[[ Add Server CoreScript ]]--
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerInGameMenu", script.Parent)
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerSocialScript", script.Parent)

-- Leaderstat server child-order tracker
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerLeaderstats", script.Parent)

-- Default Alternate Death Ragdoll (China only for now)
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/PlayerRagdollRigCreator", script.Parent)

local FFlagVRAvatarGestures = game:DefineFastFlag("VRAvatarGestures", false) 
if FFlagVRAvatarGestures then
	-- make the avatars match controller movement when the player is in VR
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerAvatarGesturesController", script.Parent)
end

-- FFlag for admin freecam (for easy disabling in case of security breach)
game:DefineFastFlag("DebugFreeCameraForAdmins", true)

local SendChatAnalytics
local FFlagEnableForkedChatAnalytics = require(RobloxGui.Modules.Common.Flags.FFlagEnableForkedChatAnalytics)
if FFlagEnableForkedChatAnalytics then
	SendChatAnalytics = require(RobloxGui.Modules.Server.SendChatAnalytics)
end

ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerDialog", script.Parent)

local RemoteFunction_GetServerVersion = Instance.new("RemoteFunction")
RemoteFunction_GetServerVersion.Name = "GetServerVersion"
RemoteFunction_GetServerVersion.Parent = RobloxReplicatedStorage

local function getServerVersion()
	local rawVersion = runService:GetRobloxVersion()
	local displayVersion
	if rawVersion == "?" then
		displayVersion = "DEBUG_SERVER"
	else
		if runService:IsStudio() then
			displayVersion = "ROBLOX Studio"
		else
			displayVersion = rawVersion
		end
	end

	if not runService:IsStudio() then
		local gitHash = runService.ClientGitHash
		return string.format("%s (%.6s)", displayVersion, gitHash)
	end

	return displayVersion
end

RemoteFunction_GetServerVersion.OnServerInvoke = getServerVersion

local function shouldLoadLuaChat()
	return game:GetService("Chat").LoadDefaultChat and game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService
end

if shouldLoadLuaChat() then
	require(game:GetService("CoreGui").RobloxGui.Modules.Server.ClientChat.ChatWindowInstaller)()
	require(game:GetService("CoreGui").RobloxGui.Modules.Server.ServerChat.ChatServiceInstaller)()
elseif FFlagEnableForkedChatAnalytics then
	SendChatAnalytics("NoLoadDefaultChat")
end

if game:GetFastFlag("DebugFreeCameraForAdmins") then
	require(game:GetService("CoreGui").RobloxGui.Modules.Server.FreeCamera.FreeCameraInstaller)()
end

require(game:GetService("CoreGui").RobloxGui.Modules.Server.ServerSound.SoundDispatcherInstaller)()


local TextChatService = game:GetService("TextChatService")
local chatVersion = TextChatService.ChatVersion
if chatVersion == Enum.ChatVersion.TextChatService then
	-- initialize UIBlox here since requiring ExperienceChat will otherwise trigger a UIBlox config error...
	local UIBlox = require(CorePackages.UIBlox)
	UIBlox.init()

	local ExperienceChat = require(CorePackages.ExperienceChat)
	ExperienceChat.mountServerApp({})
end

if game:DefineFastFlag("ExperienceChatOnLoadedCounters", false) then
	if runService:IsStudio() == false then
		local AnalyticsService = game:GetService("RbxAnalyticsService")

		local counterName = if chatVersion == Enum.ChatVersion.TextChatService then
			"textChatServiceChatVersionTextChatService"
			else
			"textChatServiceChatVersionLegacy"

		AnalyticsService:ReportCounter(counterName, 1)
	end
end
