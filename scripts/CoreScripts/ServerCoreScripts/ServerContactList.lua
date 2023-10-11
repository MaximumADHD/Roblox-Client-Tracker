local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SocialService = game:GetService("SocialService")
local TeleportService = game:GetService("TeleportService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(RobloxGui.Modules.Common.Url)

local FFlagIrisUpdateCallIdForUserRemoteEventEnabled =
	game:DefineFastFlag("IrisUpdateCallIdForUserRemoteEventEnabled", false)

local RemoteInvokeIrisInvite = Instance.new("RemoteEvent")
RemoteInvokeIrisInvite.Name = "ContactListInvokeIrisInvite"
RemoteInvokeIrisInvite.Parent = RobloxReplicatedStorage

RemoteInvokeIrisInvite.OnServerEvent:Connect(function(player, tag, calleeId, calleeCombinedName)
	-- We want to fire this event from the server because there's a callback it
	-- uses that must be set on the server. This is a Roblox internal event.
	SocialService:InvokeIrisInvite(player, tag, {
		{ userId = player.UserId, combinedName = player.DisplayName },
		{ userId = calleeId, combinedName = calleeCombinedName },
	})
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

local RemoteEventUpdateCallIdForUser = Instance.new("RemoteEvent")
RemoteEventUpdateCallIdForUser.Name = "UpdateCallIdForUser"
RemoteEventUpdateCallIdForUser.Parent = RobloxReplicatedStorage

if FFlagIrisUpdateCallIdForUserRemoteEventEnabled then
	local userIdToCallIdMap: { [string]: string } = {}

	RemoteEventUpdateCallIdForUser.OnServerEvent:Connect(function(player, callId)
		local userId = tostring(player.UserId)
		userIdToCallIdMap[userId] = callId
	end)

	Players.PlayerRemoving:Connect(function(player)
		-- It is possible for a user to crash and leave the experience without
		-- ending the call. This allows us to end the call on the user's behalf.
		local targetUserId: string = tostring(player.UserId)
		local targetCallId: string = userIdToCallIdMap[targetUserId]
		if targetCallId ~= nil then
			local success, _ = pcall(function()
				local url = Url.APIS_URL .. "call/v1/force-terminate-call-rcc"
				local params = HttpService:JSONEncode({ callId = targetCallId })
				local request = HttpRbxApiService:PostAsyncFullUrl(url, params)
				return HttpService:JSONDecode(request)
			end)

			userIdToCallIdMap[targetUserId] = nil
			if success then
				-- Remove other users in this same call since those have now
				-- been ended too.
				for userId, callId in pairs(userIdToCallIdMap) do
					if callId == targetCallId then
						userIdToCallIdMap[userId] = nil
					end
				end
			end
		end
	end)
end
