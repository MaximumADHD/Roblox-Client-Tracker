local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
assert(RobloxGui ~= nil, "RobloxGui should exist")

local GetFFlagPlayerViewRemoteEnabled = require(RobloxGui.Modules.Common.Flags.GetFFlagPlayerViewRemoteEnabled)
local FFlagEnablePlayerViewRemoteEventValidation = game:DefineFastFlag("EnablePlayerViewRemoteEventValidation", false)
local FFlagEnablePlayerViewRemoteEventUserIdValidation =
	game:DefineFastFlag("EnablePlayerViewRemoteEventUserIdValidation", false)
local FFlagEnablePlayerViewRemoteEventCFrameValidation =
	game:DefineFastFlag("EnablePlayerViewRemoteEventCFrameValidation", false)

local RequestDeviceCameraOrientationCapability = Instance.new("RemoteEvent")
RequestDeviceCameraOrientationCapability.Name = "RequestDeviceCameraOrientationCapability"
RequestDeviceCameraOrientationCapability.Parent = RobloxReplicatedStorage

local cameraOrientationRequests: { [number]: number } = {}

RequestDeviceCameraOrientationCapability.OnServerEvent:Connect(function(requestorPlayer, targetPlayer)
	if FFlagEnablePlayerViewRemoteEventValidation then
		local now = os.clock()
		local lastTime = cameraOrientationRequests[requestorPlayer.UserId]
		if lastTime and (now - lastTime) < 2 then
			return
		end
		if typeof(targetPlayer) ~= "Instance" or not targetPlayer:IsA("Player") then
			return
		end

		cameraOrientationRequests[requestorPlayer.UserId] = now
	end

	local platform = targetPlayer.OsPlatform
	RequestDeviceCameraOrientationCapability:FireClient(
		requestorPlayer,
		targetPlayer,
		platform == "iOS" or platform == "Android"
	)
end)

if FFlagEnablePlayerViewRemoteEventValidation then
	Players.PlayerRemoving:Connect(function(player)
		cameraOrientationRequests[player.UserId] = nil
	end)
end

if GetFFlagPlayerViewRemoteEnabled() then
	local RequestDeviceCameraCFrameRemoteEvent = Instance.new("RemoteEvent")
	RequestDeviceCameraCFrameRemoteEvent.Name = "RequestDeviceCameraCFrame"
	RequestDeviceCameraCFrameRemoteEvent.Parent = RobloxReplicatedStorage

	local ReplicateDeviceCameraCFrameRemoteEvent = Instance.new("UnreliableRemoteEvent")
	ReplicateDeviceCameraCFrameRemoteEvent.Name = "ReplicateDeviceCameraCFrame"
	ReplicateDeviceCameraCFrameRemoteEvent.Parent = RobloxReplicatedStorage

	local requests = {}

	Players.PlayerRemoving:Connect(function(player)
		local userId = tostring(player.UserId)
		requests[userId] = nil
	end)

	RequestDeviceCameraCFrameRemoteEvent.OnServerEvent:Connect(function(player, requesteeUserId)
		if FFlagEnablePlayerViewRemoteEventUserIdValidation then
			if typeof(requesteeUserId) ~= "number" or requesteeUserId <= 0 or player.UserId == requesteeUserId then
				return
			end
		end

		local requestee = Players:GetPlayerByUserId(requesteeUserId)
		if not requestee then
			return
		end

		local requesteeUserIdStr = if FFlagEnablePlayerViewRemoteEventUserIdValidation
			then tostring(requestee.UserId)
			else tostring(requesteeUserId)

		if not requests[requesteeUserIdStr] then
			requests[requesteeUserIdStr] = {}
		end

		requests[requesteeUserIdStr][tostring(player.UserId)] = os.clock()
		RequestDeviceCameraCFrameRemoteEvent:FireClient(requestee)
	end)

	ReplicateDeviceCameraCFrameRemoteEvent.OnServerEvent:Connect(function(player, cframe, cframeTs)
		if FFlagEnablePlayerViewRemoteEventCFrameValidation then
			if typeof(cframe) ~= "CFrame" or typeof(cframeTs) ~= "number" or cframeTs <= 0 then
				return
			end
		end

		local requesteeUserIdStr = tostring(player.UserId)

		if requests[requesteeUserIdStr] then
			local userIdsToRemove = {}

			for requestorUserId, requestTs in requests[requesteeUserIdStr] do
				if os.clock() - requestTs > 5 then
					table.insert(userIdsToRemove, requestorUserId)
					continue
				end
				local requestorUserIdNum = tonumber(requestorUserId)
				if requestorUserIdNum then
					local requestor = Players:GetPlayerByUserId(requestorUserIdNum)
					if requestor then
						ReplicateDeviceCameraCFrameRemoteEvent:FireClient(requestor, player, cframe, cframeTs)
					end
				end
			end

			for _, requestorUserId in userIdsToRemove do
				requests[requesteeUserIdStr][requestorUserId] = nil
			end
		end
	end)
end
