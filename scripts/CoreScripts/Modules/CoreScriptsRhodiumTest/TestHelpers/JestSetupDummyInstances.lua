--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

if not RobloxGui:FindFirstChild("SendNotificationInfo") then
	local sendNotificationInfo = Instance.new("BindableEvent")
	sendNotificationInfo.Name = "SendNotificationInfo"
	sendNotificationInfo.Parent = RobloxGui
end

if not RobloxGui:FindFirstChild("Sounds") then
	local sounds = Instance.new("Folder")
	sounds.Name = "Sounds"
	sounds.Parent = RobloxGui
end

if not RobloxReplicatedStorage:FindFirstChild("NewPlayerGroupDetails") then
	local newPlayerGroupDetails = Instance.new("RemoteEvent")
	newPlayerGroupDetails.Name = "NewPlayerGroupDetails"
	newPlayerGroupDetails.Parent = RobloxReplicatedStorage
end

if not RobloxReplicatedStorage:FindFirstChild("UpdatePlayerBlockList") then
	local updatePlayerBlockList = Instance.new("RemoteEvent")
	updatePlayerBlockList.Name = "UpdatePlayerBlockList"
	updatePlayerBlockList.Parent = RobloxReplicatedStorage
end

if not RobloxReplicatedStorage:FindFirstChild("NewPlayerCanManageDetails") then
	local newPlayerCanManageDetails = Instance.new("RemoteEvent")
	newPlayerCanManageDetails.Name = "NewPlayerCanManageDetails"
	newPlayerCanManageDetails.Parent = RobloxReplicatedStorage
end
