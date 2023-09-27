local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SocialService = game:GetService("SocialService")
local TeleportService = game:GetService("TeleportService")

local RemoteInvokeIrisInvite = Instance.new("RemoteEvent")
RemoteInvokeIrisInvite.Name = "ContactListInvokeIrisInvite"
RemoteInvokeIrisInvite.Parent = RobloxReplicatedStorage

RemoteInvokeIrisInvite.OnServerEvent:Connect(function(player, tag, calleeId)
	-- We want to fire this event from the server because there's a callback it
	-- uses that must be set on the server. This is a Roblox internal event.
	SocialService:InvokeIrisInvite(player, tag, { player.UserId, calleeId })
end)

local RemoteIrisInviteTeleport = Instance.new("RemoteEvent")
RemoteIrisInviteTeleport.Name = "ContactListIrisInviteTeleport"
RemoteIrisInviteTeleport.Parent = RobloxReplicatedStorage

RemoteIrisInviteTeleport.OnServerEvent:Connect(function(player, placeId, instanceId, reservedServerAccessCode)
	-- Fired when an iris invite is made and the initiator needs to be
	-- teleported to the correct location.
	local teleportOptions = Instance.new("TeleportOptions")
	if reservedServerAccessCode ~= nil then
		teleportOptions.ReservedServerAccessCode = reservedServerAccessCode
	else
		teleportOptions.ServerInstanceId = instanceId
	end

	TeleportService:TeleportAsync(placeId, { player }, teleportOptions)
end)
