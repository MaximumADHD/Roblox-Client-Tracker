local CoreGui = game:GetService("CoreGui")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local SendNotification = RobloxGui:WaitForChild("SendNotificationInfo")

local BaseUrl = game:GetService("ContentProvider").BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "http:", "https:")
local FriendCountUrl = string.gsub(BaseUrl, "www", "friends") .. "v1/users/{userId}/friends/count"

local MAX_FRIEND_COUNT = 200

local FFlagUseNewFriendsDomainCoreScripts = settings():GetFFlag("UseNewFriendsDomainCoreScripts")

local function getFriendCountAsync(userId)
	local friendCount = nil

	local wasSuccess, result
	if FFlagUseNewFriendsDomainCoreScripts then
		wasSuccess, result = pcall(function()
			if userId == nil then
				userId = LocalPlayer.UserId
			end
			local url = string.gsub(FriendCountUrl,"{userId}",userId)
			return HttpRbxApiService:GetAsyncFullUrl(url)
		end)
		if not wasSuccess then
			warn(FriendCountUrl,"failed because", result)
			return nil
		end
	else
		wasSuccess, result = pcall(function()
			local str = 'user/get-friendship-count'
			if userId then
				str = str..'?userId='..tostring(userId)
			end
			return HttpRbxApiService:GetAsync(str, Enum.ThrottlingPriority.Default,
				Enum.HttpRequestType.Players)
		end)
		if not wasSuccess then
			warn("getFriendCountAsync() failed because", result)
			return nil
		end
	end
	
	wasSuccess, result = pcall(function()
		return HttpService:JSONDecode(result)
	end)
	if not wasSuccess then
		if FFlagUseNewFriendsDomainCoreScripts then
			warn(FriendCountUrl,"JSONDecode failed because", result)
		else
			warn("getFriendCountAsync() JSONDecode failed because", result)
		end
		return nil
	end

	if FFlagUseNewFriendsDomainCoreScripts then
		if result["count"] then
			friendCount = result["count"]
		end
	else
		if result["success"] and result["count"] then
			friendCount = result["count"]
		end
	end

	return friendCount
end

local function RequestFriendship(player, isAcceptRequest)
	return function()
		coroutine.wrap(function()
			local theirFriendCount = getFriendCountAsync(player.UserId)
			local myFriendCount = getFriendCountAsync()

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
				local title = isAcceptRequest and "Cannot send friend request" or "Cannot accept friend request"
				SendNotification:Fire({
					Title = title,
					Text = "You are at the max friends limit.",
					Duration = 5,
				})
			elseif theirFriendCount >= MAX_FRIEND_COUNT then
				local title = isAcceptRequest and "Cannot send friend request" or "Cannot accept friend request"
				local text = RobloxTranslator:FormatByKey(
					"PlayerDropDown.OtherPlayerFriendLimit",
					{RBX_NAME = player.Name}
				)
				SendNotification:Fire({
					Title = title,
					Text = text,
					Duration = 5,
				})
			end
		end)()
	end
end

return RequestFriendship