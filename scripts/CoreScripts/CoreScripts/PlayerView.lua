local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local PlayerViewService = game:GetService("PlayerViewService")

local RequestDeviceCameraCFrameRemoteEvent =
	RobloxReplicatedStorage:WaitForChild("RequestDeviceCameraCFrame") :: RemoteEvent
local ReplicateDeviceCameraCFrameRemoteEvent =
	RobloxReplicatedStorage:WaitForChild("ReplicateDeviceCameraCFrame") :: UnreliableRemoteEvent

local EngineFeaturePlayerViewRemoteEventSupport = game:GetEngineFeature("PlayerViewRemoteEventSupport")

ReplicateDeviceCameraCFrameRemoteEvent.OnClientEvent:Connect(function(player, cframe, timestamp)
	if EngineFeaturePlayerViewRemoteEventSupport then
		PlayerViewService:UpdateDeviceCFrame(player, cframe, timestamp)
	end
end)
RequestDeviceCameraCFrameRemoteEvent.OnClientEvent:Connect(function()
	if EngineFeaturePlayerViewRemoteEventSupport then
		PlayerViewService:OnCameraCFrameReplicationRequest()
	end
end)
