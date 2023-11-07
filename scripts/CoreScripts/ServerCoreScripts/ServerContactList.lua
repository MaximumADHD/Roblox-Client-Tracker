local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SocialService = game:GetService("SocialService")
local TeleportService = game:GetService("TeleportService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(RobloxGui.Modules.Common.Url)

local FFlagIrisUpdateCurrentCallRemoteEventEnabled =
	game:DefineFastFlag("IrisUpdateCurrentCallRemoteEventEnabled", true)

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

local RemoteEventUpdateCurrentCall = Instance.new("RemoteEvent")
RemoteEventUpdateCurrentCall.Name = "UpdateCurrentCall"
RemoteEventUpdateCurrentCall.Parent = RobloxReplicatedStorage

if FFlagIrisUpdateCurrentCallRemoteEventEnabled then
	local currentCall: { callId: string, participants: { [number]: string } } | nil
	local function enforceCallParticipants()
		if currentCall ~= nil then
			-- This enforces the privacy of the call. If there are people who are
			-- in a call, and not everyone in this server is in that call, we remove
			-- all users from the server.
			local kickUsers = false
			for _, player in pairs(Players:GetPlayers()) do
				local userId = tostring(player.UserId)
				local isParticipant = table.find(currentCall.participants, userId) ~= nil
				if not isParticipant then
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
	end

	local function terminateCall(callId: string)
		local success, _ = pcall(function()
			local url = Url.APIS_URL .. "call/v1/force-terminate-call-rcc"
			local params = HttpService:JSONEncode({ callId = callId })
			local request = HttpRbxApiService:PostAsyncFullUrl(url, params)
			return HttpService:JSONDecode(request)
		end)
		return success
	end

	RemoteEventUpdateCurrentCall.OnServerEvent:Connect(
		function(_, call: { callId: string, participants: { [number]: string } } | nil)
			if currentCall ~= nil and call ~= nil and currentCall.callId ~= call.callId then
				-- This should be rare. The server is hosting two calls.
				-- Terminate the existing call and expect that the next line
				-- will disconnect all users.
				terminateCall(currentCall.callId)
			end

			currentCall = call
			enforceCallParticipants()
		end
	)

	Players.PlayerAdded:Connect(function(player)
		enforceCallParticipants()
	end)

	Players.PlayerRemoving:Connect(function(player)
		-- It is possible for a user to crash and leave the experience without
		-- ending the call. This allows us to end the call on the user's behalf.
		if currentCall ~= nil then
			local targetUserId: string = tostring(player.UserId)
			local isParticipant = table.find(currentCall.participants, targetUserId) ~= nil
			if isParticipant and terminateCall(currentCall.callId) then
				-- Call has been terminated, remove it from this server.
				currentCall = nil
			end
		end
	end)
end
