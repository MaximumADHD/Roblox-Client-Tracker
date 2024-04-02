local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
assert(RobloxGui ~= nil, "RobloxGui should exist")

local GetFFlagPlayerViewRemoteEnabled = require(RobloxGui.Modules.Common.Flags.GetFFlagPlayerViewRemoteEnabled)
local GetFFlagPlayerViewValidateRequesteeEnabled =
	require(RobloxGui.Modules.Common.Flags.GetFFlagPlayerViewValidateRequesteeEnabled)

local RequestDeviceCameraOrientationCapability = Instance.new("RemoteEvent")
RequestDeviceCameraOrientationCapability.Name = "RequestDeviceCameraOrientationCapability"
RequestDeviceCameraOrientationCapability.Parent = RobloxReplicatedStorage

RequestDeviceCameraOrientationCapability.OnServerEvent:Connect(function(requestorPlayer, targetPlayer)
	local platform = targetPlayer.OsPlatform
	RequestDeviceCameraOrientationCapability:FireClient(
		requestorPlayer,
		targetPlayer,
		platform == "iOS" or platform == "Android"
	)
end)

if GetFFlagPlayerViewRemoteEnabled() then
	local RequestDeviceCameraCFrameRemoteEvent = Instance.new("RemoteEvent")
	RequestDeviceCameraCFrameRemoteEvent.Name = "RequestDeviceCameraCFrame"
	RequestDeviceCameraCFrameRemoteEvent.Parent = RobloxReplicatedStorage

	local ReplicateDeviceCameraCFrameRemoteEvent = Instance.new("UnreliableRemoteEvent")
	ReplicateDeviceCameraCFrameRemoteEvent.Name = "ReplicateDeviceCameraCFrame"
	ReplicateDeviceCameraCFrameRemoteEvent.Parent = RobloxReplicatedStorage

	local requests = {}

	if GetFFlagPlayerViewValidateRequesteeEnabled() then
		Players.PlayerRemoving:Connect(function(player)
			local userId = tostring(player.UserId)
			requests[userId] = nil
		end)
	end

	RequestDeviceCameraCFrameRemoteEvent.OnServerEvent:Connect(function(player, requesteeUserId)
		if GetFFlagPlayerViewValidateRequesteeEnabled() then
			local requestee = Players:GetPlayerByUserId(requesteeUserId)
			if not requestee then
				return
			end

			local requesteeUserIdStr = tostring(requesteeUserId)

			if not requests[requesteeUserIdStr] then
				requests[requesteeUserIdStr] = {}
			end

			requests[requesteeUserIdStr][tostring(player.UserId)] = os.clock()
			RequestDeviceCameraCFrameRemoteEvent:FireClient(requestee)
		else
			local requesteeUserIdStr = tostring(requesteeUserId)

			if not requests[requesteeUserIdStr] then
				requests[requesteeUserIdStr] = {}
			end

			requests[requesteeUserIdStr][tostring(player.UserId)] = os.clock()
			local requestee = Players:GetPlayerByUserId(requesteeUserId)
			if requestee then
				RequestDeviceCameraCFrameRemoteEvent:FireClient(requestee)
			end
		end
	end)

	ReplicateDeviceCameraCFrameRemoteEvent.OnServerEvent:Connect(function(player, cframe, cframeTs)
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
