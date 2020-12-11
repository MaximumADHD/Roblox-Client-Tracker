local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local RemoteEvent_SetDialogInUse = Instance.new("RemoteEvent")
RemoteEvent_SetDialogInUse.Name = "SetDialogInUse"
RemoteEvent_SetDialogInUse.Parent = RobloxReplicatedStorage

local playerDialogMap = {}

local function setDialogInUse(player, dialog, value)
	if typeof(dialog) ~= "Instance" or not dialog:IsA("Dialog") then
		return
	end

	if type(value) ~= "boolean" then
		return
	end

	if typeof(player) ~= "Instance" or not player:IsA("Player") then
		return
	end

	if dialog then
		dialog:SetPlayerIsUsing(player, value)
		playerDialogMap[player] = value and dialog or nil
	end
end

Players.PlayerRemoving:Connect(function(player)
	local dialog = playerDialogMap[player]
	if dialog then
		dialog:SetPlayerIsUsing(player, false)
		playerDialogMap[player] = nil
	end
end)

RemoteEvent_SetDialogInUse.OnServerEvent:Connect(setDialogInUse)
