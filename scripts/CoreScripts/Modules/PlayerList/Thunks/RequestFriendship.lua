--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local LocalPlayer = Players.LocalPlayer

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local FriendingUtility = require(RobloxGui.Modules.FriendingUtility)
local SendNotification = RobloxGui:WaitForChild("SendNotificationInfo")
local FFlagRemoveHardCodedFriendLimitPrompt = require(RobloxGui.Modules.Flags.FFlagRemoveHardCodedFriendLimitPrompt)


local MAX_FRIEND_COUNT = 200

local function RequestFriendship(player, isAcceptRequest)
	return function()
		coroutine.wrap(function()
			if FFlagRemoveHardCodedFriendLimitPrompt then
				RbxAnalyticsService:ReportCounter("PlayerDropDown-RequestFriendship")
				RbxAnalyticsService:TrackEvent("Game", "RequestFriendship", "PlayerDropDown")

				if player.Parent == Players then
					LocalPlayer:RequestFriendship(player)
				end
			else
				local theirFriendCount = FriendingUtility:GetFriendCountAsync(player.UserId)
				local myFriendCount = FriendingUtility:GetFriendCountAsync(LocalPlayer.UserId)
				if not myFriendCount or not theirFriendCount then
					return
				end
				if myFriendCount < MAX_FRIEND_COUNT and theirFriendCount < MAX_FRIEND_COUNT then
					RbxAnalyticsService:ReportCounter("PlayerDropDown-RequestFriendship")
					RbxAnalyticsService:TrackEvent("Game", "RequestFriendship", "PlayerDropDown")
	
					if player.Parent == Players then
						LocalPlayer:RequestFriendship(player)
					end
				elseif myFriendCount >= MAX_FRIEND_COUNT then
					local title = isAcceptRequest and "Cannot accept friend request" or "Cannot send friend request"
					SendNotification:Fire({
						Title = title,
						Text = "You are at the max friends limit.",
						Duration = 5,
					})
				elseif theirFriendCount >= MAX_FRIEND_COUNT then
					local title = isAcceptRequest and "Cannot accept friend request" or "Cannot send friend request"
					local text = RobloxTranslator:FormatByKey(
						"InGame.PlayerDropDown.OtherPlayerFriendLimit",
						{RBX_NAME = player.Name}
					)
					SendNotification:Fire({
						Title = title,
						Text = text,
						Duration = 5,
					})
				end
			end

		end)()
	end
end

return RequestFriendship
