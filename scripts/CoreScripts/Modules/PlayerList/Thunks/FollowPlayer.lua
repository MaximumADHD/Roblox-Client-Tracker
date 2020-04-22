local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local PlayerList = script.Parent.Parent

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local SendNotification = RobloxGui:WaitForChild("SendNotificationInfo")
local GetFFlagRemoveInGameFollowingEvents = require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameFollowingEvents)

-- We do this to surpress warnings when a client is slow to load the game.
-- We only wait 5 minutes because we want warnings/errors if the event actually doesn't exist.
local NewFollower
if not GetFFlagRemoveInGameFollowingEvents() then
	NewFollower = RobloxReplicatedStorage:WaitForChild("NewFollower", 300)
end

-- Actions
local SetPlayerIsFollowing = require(PlayerList.Actions.SetPlayerIsFollowing)

local function FollowPlayer(player)
	return function(store)
		coroutine.wrap(function()
			local followedUserId = tostring(player.UserId)
			local apiPath = "user/follow"
			local params = "followedUserId="..followedUserId
			local success, result = pcall(function()
				return HttpRbxApiService:PostAsync(apiPath, params, Enum.ThrottlingPriority.Default,
					Enum.HttpContentType.ApplicationUrlEncoded, Enum.HttpRequestType.Players)
			end)
			if not success then
				warn("followPlayer() failed because", result)
				return
			end

			success, result = pcall(function()
				return HttpService:JSONDecode(result)
			end)
			if not success then
				warn("followPlayer() JSONDecode failed because", result)
				return
			end

			if result["success"] then
				store:dispatch(SetPlayerIsFollowing(player, true))
				local text = RobloxTranslator:FormatByKey(
					"PlayerDropDown.onFollowButtonPress.success",
					{RBX_NAME = player.Name}
				)
				SendNotification:Fire({
					Title = "You are",
					Text = text,
					Image = "https://www.roblox.com/thumbs/avatar.ashx?userId=" ..followedUserId.. "&x=48&y=48",
					Duration = 5,
				})

				if NewFollower then
					NewFollower:FireServer(player, true)
				end
			end
		end)()
	end
end

return FollowPlayer
