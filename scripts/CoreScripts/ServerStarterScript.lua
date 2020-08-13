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
local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
local ScriptContext = game:GetService('ScriptContext')

--[[ Add Server CoreScript ]]--
ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerSocialScript", script.Parent)

-- Leaderstat server child-order tracker
local FFlagAnOrderOfLeaderstats = game:DefineFastFlag("AnOrderOfLeaderstats", false)
if FFlagAnOrderOfLeaderstats then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/ServerLeaderstats", script.Parent)
end

-- Default Alternate Death Ragdoll (China only for now)
local FFlagSupportDeathType = game:DefineFastFlag("SupportDeathTypeServer", false)
if FFlagSupportDeathType then
	ScriptContext:AddCoreScriptLocal("ServerCoreScripts/PlayerRagdollRigCreator", script.Parent)
end

-- FFlag for admin freecam (for easy disabling in case of security breach)
game:DefineFastFlag("DebugFreeCameraForAdmins", true)

--[[ Remote Events ]]--
local RemoteEvent_SetDialogInUse = Instance.new("RemoteEvent")
RemoteEvent_SetDialogInUse.Name = "SetDialogInUse"
RemoteEvent_SetDialogInUse.Parent = RobloxReplicatedStorage

local RemoteFunction_GetServerVersion = Instance.new("RemoteFunction")
RemoteFunction_GetServerVersion.Name = "GetServerVersion"
RemoteFunction_GetServerVersion.Parent = RobloxReplicatedStorage

--[[ Event Connections ]]--
local playerDialogMap = {}

local function setDialogInUse(player, dialog, value, waitTime)
	if typeof(dialog) ~= "Instance" or not dialog:IsA("Dialog") then
		return
	end
	if type(value) ~= "boolean" then
		return
	end
	if type(waitTime) ~= "number" and type(waitTime) ~= "nil" then
		return
	end
	if typeof(player) ~= "Instance" or not player:IsA("Player") then
		return
	end

	if waitTime and waitTime ~= 0 then
		wait(waitTime)
	end
	if dialog ~= nil then
		dialog:SetPlayerIsUsing(player, value)
		playerDialogMap[player] = value and dialog or nil
	end
end
RemoteEvent_SetDialogInUse.OnServerEvent:connect(setDialogInUse)

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
	return displayVersion
end

RemoteFunction_GetServerVersion.OnServerInvoke = getServerVersion

game:GetService("Players").PlayerRemoving:connect(function(player)
	if player then
		local dialog = playerDialogMap[player]
		if dialog then
			dialog:SetPlayerIsUsing(player, false)
			playerDialogMap[player] = nil
		end
	end
end)

if game:GetService("Chat").LoadDefaultChat then
	require(game:GetService("CoreGui").RobloxGui.Modules.Server.ClientChat.ChatWindowInstaller)()
	require(game:GetService("CoreGui").RobloxGui.Modules.Server.ServerChat.ChatServiceInstaller)()
end

if game:GetFastFlag("DebugFreeCameraForAdmins") then
	require(game:GetService("CoreGui").RobloxGui.Modules.Server.FreeCamera.FreeCameraInstaller)()
end

require(game:GetService("CoreGui").RobloxGui.Modules.Server.ServerSound.SoundDispatcherInstaller)()

