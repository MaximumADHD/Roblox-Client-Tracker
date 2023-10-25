local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SocialService = game:GetService("SocialService")
local TeleportService = game:GetService("TeleportService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(RobloxGui.Modules.Common.Url)

local FFlagIrisUpdateCallIdForUserRemoteEventEnabled = game:DefineFastFlag("IrisUpdateCallIdForUserRemoteEventEnabled2", true)

local RemoteInvokeIrisInvite = Instance.new("RemoteEvent")
RemoteInvokeIrisInvite.Name = "ContactListInvokeIrisInvite"
RemoteInvokeIrisInvite.Parent = RobloxReplicatedStorage

RemoteInvokeIrisInvite.OnServerEvent:Connect(function(player, tag, calleeId, calleeCombinedName, muted, camEnabled)
	-- We want to fire this event from the server because there's a callback it
	-- uses that must be set on the server. This is a Roblox internal event.
	SocialService:InvokeIrisInvite(player, tag, {
		{ userId = player.UserId, combinedName = player.DisplayName, muted = muted, camEnabled = camEnabled },
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
	local userIdToCallInfoMap: { [string]: { callId: string, endCallOnLeave: boolean } } = {}
	local function enforceCallParticipants()
		-- This enforces the privacy of the call. If there are people who are
		-- in a call, and not everyone in this server is in that call, we remove
		-- all users from the server.
		local lastCallId = nil
		local kickUsers = false
		for _, callInfo in pairs(userIdToCallInfoMap) do
			local currentCallId = callInfo.callId
			if lastCallId == nil then
				lastCallId = currentCallId
			elseif lastCallId ~= currentCallId then
				kickUsers = true
				break
			end
		end

		if kickUsers then
			for _, player in pairs(Players:GetPlayers()) do
				player:Kick()
			end
		end
	end

	RemoteEventUpdateCallIdForUser.OnServerEvent:Connect(function(player, callId: string, endCallOnLeave: boolean)
		-- Note we expect this to be called for each user, regardless of whether
		-- a call exists. We are passed "" for callId if the user is not in a call.
		local userId = tostring(player.UserId)
		userIdToCallInfoMap[userId] = { callId = callId, endCallOnLeave = endCallOnLeave }

		enforceCallParticipants()
	end)

	Players.PlayerRemoving:Connect(function(player)
		-- It is possible for a user to crash and leave the experience without
		-- ending the call. This allows us to end the call on the user's behalf.
		local targetUserId: string = tostring(player.UserId)
		local targetCallInfo = userIdToCallInfoMap[targetUserId]
		if targetCallInfo ~= nil and targetCallInfo.callId ~= "" and targetCallInfo.endCallOnLeave then
			pcall(function()
				local url = Url.APIS_URL .. "call/v1/force-terminate-call-rcc"
				local params = HttpService:JSONEncode({ callId = targetCallInfo.callId })
				local request = HttpRbxApiService:PostAsyncFullUrl(url, params)
				return HttpService:JSONDecode(request)
			end)
		end

		targetCallInfo[targetUserId] = nil
	end)
end
