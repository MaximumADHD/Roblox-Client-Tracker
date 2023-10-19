local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')

local RequestDeviceCameraOrientationCapability = Instance.new("RemoteEvent")
RequestDeviceCameraOrientationCapability.Name = "RequestDeviceCameraOrientationCapability"
RequestDeviceCameraOrientationCapability.Parent = RobloxReplicatedStorage

RequestDeviceCameraOrientationCapability.OnServerEvent:Connect(function(requestorPlayer, targetPlayer)
    local platform = targetPlayer.OsPlatform
	RequestDeviceCameraOrientationCapability:FireClient(requestorPlayer, targetPlayer, platform == "iOS" or platform == "Android")
end)
