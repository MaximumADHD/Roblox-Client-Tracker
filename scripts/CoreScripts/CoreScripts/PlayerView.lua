local CoreGui = game:GetService('CoreGui')
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local PlayerViewService = game:GetService("PlayerViewService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFIntPlayerViewRemoteEventTimeout = require(RobloxGui.Modules.Flags.GetFIntPlayerViewRemoteEventTimeout)

local timeout = GetFIntPlayerViewRemoteEventTimeout()

local RequestDeviceCameraCFrameRemoteEvent =
	RobloxReplicatedStorage:WaitForChild("RequestDeviceCameraCFrame", timeout) :: RemoteEvent
local ReplicateDeviceCameraCFrameRemoteEvent =
	RobloxReplicatedStorage:WaitForChild("ReplicateDeviceCameraCFrame", timeout) :: UnreliableRemoteEvent

local EngineFeaturePlayerViewRemoteEventSupport = game:GetEngineFeature("PlayerViewRemoteEventSupport")

if RequestDeviceCameraCFrameRemoteEvent and ReplicateDeviceCameraCFrameRemoteEvent then
	-- If event was not loaded, camera tracking would not function.
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
else
	warn("PlayerViewService failed to initialize.")
end
