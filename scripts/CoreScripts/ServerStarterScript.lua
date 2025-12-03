--[[
		// Filename: ServerStarterScript.lua
		// Version: 1.0
		// Description: Server core script that handles core script server side logic.
]]
--

local runService = game:GetService("RunService")

-- Prevent server script from running in Studio when not in run mode
while not runService:IsRunning() do
	wait()
end

--[[ Services ]]
--
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ScriptContext = game:GetService("ScriptContext")
local CoreGui = game:GetService("CoreGui")
local GetFFlagDisplayServerChannel = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDisplayServerChannel
local getFFlagExpChatAlwaysRunTCS = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagExpChatAlwaysRunTCS
local GetFFlagEnableReferredPlayerJoinRemoteEvent = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableReferredPlayerJoinRemoteEvent
local FFlagDebugLogExpchatMigration = game:DefineFastFlag("DebugLogExpchatMigration", false)
local FFlagAXEnableInspectAndBuyBulkPurchase = require(CorePackages.Workspace.Packages.SharedFlags).FFlagAXEnableInspectAndBuyBulkPurchase

local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
assert(RobloxGui ~= nil, "RobloxGui should exist")

local ServerUtil = require(RobloxGui.Modules.Server.ServerUtil)

if ServerUtil.getFFlagServerCoreScriptSourceCode() then
	ServerUtil.initSourceCodeFolder()
end

--[[ Add Server CoreScript ]]
--

-- Remote allow list
if game:DefineFastFlag("ImplementLuaAppsRemoteAllowList", false) then
	require(RobloxGui.Modules.Server.RemoteAllowList)()
end

-- OpenCloud
if game:DefineFastFlag("OpenCloudCoreScriptLuaEnabled", false) then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/OpenCloud/OpenCloudV2", script.Parent)
end
if game:DefineFastFlag("OpenCloudClientLibraryCoreScriptEnabled", false) then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/OpenCloud/OpenCloudClientLibraryCoreScript", script.Parent)
end

ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerInGameMenu", script.Parent)
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerSocialScript", script.Parent)

-- Leaderstat server child-order tracker
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerLeaderstats", script.Parent)

-- Default Alternate Death Ragdoll (China only for now)
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/PlayerRagdollRigCreator", script.Parent)

-- FFlag for admin freecam (for easy disabling in case of security breach)
game:DefineFastFlag("DebugFreeCameraForAdmins", true)

-- Bulk purchase (for Inspect and Buy)
if FFlagAXEnableInspectAndBuyBulkPurchase then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerBulkPurchaseEvent", script.Parent)
end

local SendChatAnalytics
local FFlagEnableForkedChatAnalytics = require(RobloxGui.Modules.Common.Flags.FFlagEnableForkedChatAnalytics)
if FFlagEnableForkedChatAnalytics then
	SendChatAnalytics = require(RobloxGui.Modules.Server.SendChatAnalytics)
end

ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerDialog", script.Parent)

local RemoteFunction_GetServerVersion = Instance.new("RemoteFunction")
RemoteFunction_GetServerVersion.Name = "GetServerVersion"
RemoteFunction_GetServerVersion.Parent = RobloxReplicatedStorage

local RemoteFunction_GetServerChannel = nil
if GetFFlagDisplayServerChannel() then
	RemoteFunction_GetServerChannel = Instance.new("RemoteFunction")
	RemoteFunction_GetServerChannel.Name = "GetServerChannel"
	RemoteFunction_GetServerChannel.Parent = RobloxReplicatedStorage
end

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

local function getServerChannel()
	return runService:GetRobloxClientChannel()
end

RemoteFunction_GetServerVersion.OnServerInvoke = getServerVersion
if GetFFlagDisplayServerChannel() then
	RemoteFunction_GetServerChannel.OnServerInvoke = getServerChannel
end

local FFlagEnableTenFootInterfaceCheckForLegacyChat =
	game:DefineFastFlag("EnableTenFootInterfaceCheckForLegacyChat", false)
local function shouldLoadLuaChat()
	if FFlagEnableTenFootInterfaceCheckForLegacyChat then
		return game:GetService("Chat").LoadDefaultChat
			and game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService
			and (not game:GetService("GuiService"):IsTenFootInterface())
	else
		return game:GetService("Chat").LoadDefaultChat
			and game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService
	end
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

require(game:GetService("CoreGui").RobloxGui.Modules.Server.UGCValidation.UGCValidationFunctionInstaller)()

local TextChatService = game:GetService("TextChatService")
local chatVersion = TextChatService.ChatVersion
if getFFlagExpChatAlwaysRunTCS() or chatVersion == Enum.ChatVersion.TextChatService then
	local ExperienceChatServer = require(CorePackages.Workspace.Packages.ExpChatServer)
	ExperienceChatServer.mountServerApp({})
elseif chatVersion == Enum.ChatVersion.LegacyChatService then
	local Chat = game:GetService("Chat")
	Chat:GetPropertyChangedSignal("IsAutoMigrated"):Connect(function()
		if Chat.IsAutoMigrated then
			if FFlagDebugLogExpchatMigration then
				print("Migrating to ExpChat")
			end
			local ExperienceChatServer = require(CorePackages.Workspace.Packages.ExpChatServer)
			ExperienceChatServer.mountServerApp({})
		end
	end)
end

if runService:IsStudio() == false then
	local counterName = if chatVersion == Enum.ChatVersion.TextChatService
		then "textChatServiceChatVersionTextChatService"
		else "textChatServiceChatVersionLegacy"

	AnalyticsService:ReportCounter(counterName, 1)
end

if game:DefineFastFlag("VersionedFlags_Dev", false) then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/VersionedFlagTest", script.Parent)
end

local GetFFlagContactListEnabled = require(RobloxGui.Modules.Common.Flags.GetFFlagContactListEnabled)
if GetFFlagContactListEnabled() then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerContactList", script.Parent)
end

ScriptContext:AddCoreScriptLocal("ServerCoreScripts/PlayerViewCapability", script.Parent)

local GetFFlagEnableVoiceDefaultServerScript =
	require(RobloxGui.Modules.Common.Flags.GetFFlagEnableVoiceDefaultServerScript)

if GetFFlagEnableVoiceDefaultServerScript() then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/VoiceDefault", script.Parent)
end

if GetFFlagEnableReferredPlayerJoinRemoteEvent() then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ReferredByPlayerRemoteEvent", script.Parent)
end

-- controls avatar gestures using VR controls
require(game:GetService("CoreGui").RobloxGui.Modules.Server.VR.VRAvatarGesturesServer).new()
