--[[
	TeleportAsync can only be called from the server, so the prompt fires this remote with the new server's access
	code, which is what TeleportOptions.VipServerId expects. When the teleport can't start, the remote is fired back
	so the prompt can let the player retry.

	The destination is always the experience's root place, which owns its VIP servers. It's looked up here rather than
	taken from the client: a server-side teleport is trusted for any place in the experience, so a client-chosen place
	would get around secure teleports and reach places that are closed to direct joins.

	Matchmaking checks the player's access to the VIP server when they join, not the engine, so this only validates
	the request's shape and caps how many teleports each player can request.
]]
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local TeleportService = game:GetService("TeleportService")

local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url

local MAX_TELEPORT_ATTEMPTS = 3
local MAX_ACCESS_CODE_LENGTH = 64

local teleportAttemptsByUserId: { [number]: number } = {}
local rootPlaceId: number? = nil

local RemoteVIPServerTeleport = Instance.new("RemoteEvent")
RemoteVIPServerTeleport.Name = "TeleportToPurchasedVIPServer"
RemoteVIPServerTeleport.Parent = RobloxReplicatedStorage

local function getRootPlaceId(): number
	if rootPlaceId == nil then
		local response = HttpRbxApiService:GetAsyncFullUrl(
			`{Url.DEVELOP_URL}v1/universes/{game.GameId}`,
			Enum.ThrottlingPriority.Default,
			Enum.HttpRequestType.Default
		)
		local universe = HttpService:JSONDecode(response)
		if typeof(universe) ~= "table" or typeof(universe.rootPlaceId) ~= "number" then
			error("The universe response has no root place")
		end
		rootPlaceId = universe.rootPlaceId
	end
	return rootPlaceId :: number
end

Players.PlayerRemoving:Connect(function(player)
	teleportAttemptsByUserId[player.UserId] = nil
end)

RemoteVIPServerTeleport.OnServerEvent:Connect(function(player, vipServerAccessCode)
	local attempts = (teleportAttemptsByUserId[player.UserId] or 0) + 1
	teleportAttemptsByUserId[player.UserId] = attempts

	if
		attempts > MAX_TELEPORT_ATTEMPTS
		or typeof(vipServerAccessCode) ~= "string"
		or #vipServerAccessCode == 0
		or #vipServerAccessCode > MAX_ACCESS_CODE_LENGTH
	then
		RemoteVIPServerTeleport:FireClient(player)
		return
	end

	local success = pcall(function()
		local teleportOptions = Instance.new("TeleportOptions")
		teleportOptions.VipServerId = vipServerAccessCode
		TeleportService:TeleportAsync(getRootPlaceId(), { player }, teleportOptions)
	end)
	if not success then
		RemoteVIPServerTeleport:FireClient(player)
	end
end)
