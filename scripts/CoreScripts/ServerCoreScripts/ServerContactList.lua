local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local SocialService = game:GetService("SocialService")
local TeleportService = game:GetService("TeleportService")

local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url

local FFlagEnableContactListRemoteEventValidation = game:DefineFastFlag("EnableContactListRemoteEventValidation", false)
local EngineFeatureEnableIrisRerouteToRCC = game:GetEngineFeature("EnableIrisRerouteToRCC")

local RemoteInvokeIrisInvite = Instance.new("RemoteEvent")
RemoteInvokeIrisInvite.Name = "ContactListInvokeIrisInvite"
RemoteInvokeIrisInvite.Parent = RobloxReplicatedStorage

RemoteInvokeIrisInvite.OnServerEvent:Connect(
	function(player, tag, calleeId, calleeCombinedName, muted, camEnabled, userAgent, version)
		if FFlagEnableContactListRemoteEventValidation then
			-- Validation for invalid strings
			if
				typeof(tag) ~= "string"
				or #tag > 1000
				or typeof(calleeId) ~= "string"
				or #calleeId > 1000
				or typeof(calleeCombinedName) ~= "string"
				or #calleeCombinedName > 1000
			then
				return
			end
		end

		-- We want to fire this event from the server because there's a callback it
		-- uses that must be set on the server. This is a Roblox internal event.
		SocialService:InvokeIrisInvite(player, tag, {
			{
				userId = player.UserId,
				combinedName = player.DisplayName,
				muted = muted,
				camEnabled = camEnabled,
				userAgent = if EngineFeatureEnableIrisRerouteToRCC then userAgent else nil,
				version = if EngineFeatureEnableIrisRerouteToRCC then version else nil,
			},
			{ userId = calleeId, combinedName = calleeCombinedName },
		})
	end
)

local RemoteIrisInviteTeleport = Instance.new("RemoteEvent")
RemoteIrisInviteTeleport.Name = "ContactListIrisInviteTeleport"
RemoteIrisInviteTeleport.Parent = RobloxReplicatedStorage

local playerContactListTeleportAttempt: { [number]: number } = {}

Players.PlayerRemoving:Connect(function(player)
	playerContactListTeleportAttempt[player.UserId] = nil
end)

RemoteIrisInviteTeleport.OnServerEvent:Connect(function(player, placeId, instanceId, reservedServerAccessCode)
	local contactListTeleportAttempt = playerContactListTeleportAttempt[player.UserId]
	-- Rate limit in case of DoS
	if contactListTeleportAttempt ~= nil and contactListTeleportAttempt > 5 then
		return
	end
	if contactListTeleportAttempt == nil then
		playerContactListTeleportAttempt[player.UserId] = 1
	else
		playerContactListTeleportAttempt[player.UserId] = contactListTeleportAttempt + 1
	end

	-- Do a sanity check of the type and upperbound length of string, as recommended during security review
	if
		typeof(instanceId) ~= "string"
		or #instanceId > 1000
		or typeof(reservedServerAccessCode) ~= "string"
		or #reservedServerAccessCode > 1000
	then
		return
	end
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

local currentCall: { callId: string, participants: { [number]: string } } | nil

local kMaxUpdateCallAttempts = 10
local playerUpdateCallAttempts: { [number]: number } = {}

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
				local userId = tostring(player.UserId)
				local isParticipant = table.find(currentCall.participants, userId) ~= nil
				-- only kick call participants
				if isParticipant then
					player:Kick()
				end
			end
			currentCall = nil
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

local kMaxCallIdLength = 50
local kMaxUserIdLength = 50
local kNumParticipants = 2
local function sanityCheckParticipants(callParticipants: { [number]: string })
	if typeof(callParticipants) ~= "table" or callParticipants == nil or #callParticipants ~= kNumParticipants then
		return false
	end

	for _, k in ipairs(callParticipants) do
		if typeof(k) ~= "string" or #k > kMaxUserIdLength or tonumber(k) == nil then
			return false
		end
	end
	return true
end

local function validateCall(player: Player, callId: string, callParticipants: { [number]: string })
	-- Sanity check the call infos before sending to backend service
	if typeof(callId) ~= "string" or #callId > kMaxCallIdLength or not sanityCheckParticipants(callParticipants) then
		return 400
	end
	local success, _ = pcall(function()
		local url = Url.APIS_URL .. "call/v1/verify-valid-call"
		local callParticipantsParams = {}
		for i, k in ipairs(callParticipants) do
			callParticipantsParams[i] = tonumber(k)
		end
		local paramRequest = {
			callId = callId,
			userId = player.UserId,
			instanceId = game.JobId,
			callParticipants = callParticipantsParams,
		}
		local params = HttpService:JSONEncode(paramRequest)
		local request = HttpRbxApiService:PostAsyncFullUrl(url, params)
		return HttpService:JSONDecode(request)
	end)

	if success then
		return 200
	else
		return 400
	end
end

RemoteEventUpdateCurrentCall.OnServerEvent:Connect(
	function(player: Player, call: { callId: string, participants: { [number]: string } } | nil)
		-- Limit the amount of time a client can call this to prevent DDoS
		if
			playerUpdateCallAttempts[player.UserId] ~= nil
			and playerUpdateCallAttempts[player.UserId] > kMaxUpdateCallAttempts
		then
			return
		end

		-- Increment attempts of this player
		if playerUpdateCallAttempts[player.UserId] ~= nil then
			playerUpdateCallAttempts[player.UserId] = playerUpdateCallAttempts[player.UserId] + 1
		else
			playerUpdateCallAttempts[player.UserId] = 1
		end

		-- Updating call to nil is valid for leaving the call
		local isValidCallInfo = call == nil or validateCall(player, call.callId, call.participants) == 200
		if not isValidCallInfo then
			-- Malicious actor, kick this player
			player:Kick()
		else
			if currentCall ~= nil and call ~= nil and currentCall.callId ~= call.callId then
				-- This should be rare. The server is hosting two calls.
				-- Terminate the existing call and expect that the next line
				-- will disconnect all users.
				terminateCall(currentCall.callId)
				-- Kick all current call participants
				enforceCallParticipants()
			end
			-- Update to new call, and enforce call participants
			currentCall = call
			enforceCallParticipants()
		end
	end
)

Players.PlayerAdded:Connect(function(player)
	enforceCallParticipants()
end)

Players.PlayerRemoving:Connect(function(player)
	playerUpdateCallAttempts[player.UserId] = nil
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
