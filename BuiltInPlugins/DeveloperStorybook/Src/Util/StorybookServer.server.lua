local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SelectComponent = ReplicatedStorage:FindFirstChild("SelectComponent")

local function onPlayerAdded(player)
	local launchData = player:GetJoinData().LaunchData
	if launchData and SelectComponent then
		pcall(function()
			local result = HttpService:JSONDecode(launchData)
			task.delay(1, function()
				SelectComponent:FireClient(player, result.storybook, result.component)
			end)
		end)
	end
end

Players.PlayerAdded:Connect(onPlayerAdded)
