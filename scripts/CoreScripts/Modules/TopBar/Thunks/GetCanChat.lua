local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local TopBar = script.Parent.Parent
local SetCanChat = require(TopBar.Actions.SetCanChat)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end

return function(store)
	coroutine.wrap(function()
		local canChat = true
		if not RunService:IsStudio() then
			local success, localUserCanChat = pcall(function()
				return Chat:CanUserChatAsync(LocalPlayer.UserId)
			end)
			canChat = success and localUserCanChat
		end

		store:dispatch(SetCanChat(canChat))
		if not canChat then
			ChatSelector:SetVisible(false)
		end
	end)()
end