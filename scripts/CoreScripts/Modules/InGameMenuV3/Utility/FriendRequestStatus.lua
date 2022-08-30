--!nonstrict

local Players = game:GetService("Players")

local InGameMenu = script.Parent.Parent
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local AnalyticsService = game:GetService("RbxAnalyticsService")

local localRequestState = {}
local friendRequestAccepted = {}
local friendStatusConnection = nil
local stateUpdated = Instance.new("BindableEvent")
local localFriendRequestResponce = Instance.new("BindableEvent")
local debugLog = false
local localPlayer = Players.LocalPlayer
while not localPlayer do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	localPlayer = Players.LocalPlayer
end

-- Note: Keep values in sequential order.  ie. If inserting into the middle, reflow all values.
-- .. parts of the code with will compare order (ie.  (action > REVOKE_ACTION))
local Action = {
	NONE = nil,
	REQUEST_ACTION = 1,
	REQUEST_FRIEND = 2,
	ACCEPT_FRIEND = 3,
	-- Note: place accept/friending actions ^above^ this point
	REVOKE_ACTION = 4,
	-- Note: place revoke actions below this point
	CANCEL_REQUEST_FRIEND = 5,
	UNFRIEND = 6,
	REJECT_FRIEND = 7,
}

function friendStatusChanged(player, friendStatus)
	local fire = false
	if friendRequestAccepted[player.UserId] and friendStatus ~= Enum.FriendStatus.Friend then
		-- uncheck if friendship revoked
		friendRequestAccepted[player.UserId] = nil
		fire = true
	end

	if localRequestState[player.UserId] then
		local newFriend = localRequestState[player.UserId] == Action.REQUEST_FRIEND or localRequestState[player.UserId] == Action.ACCEPT_FRIEND
		if friendStatus == Enum.FriendStatus.Friend and newFriend then
			friendRequestAccepted[player.UserId] = true
		end
		if friendStatus == Enum.FriendStatus.NotFriend or friendStatus == Enum.FriendStatus.Friend then
			localRequestState[player.UserId] = Action.NONE
		end
		fire = true
	end

	if fire then
		stateUpdated:Fire()
	end
end

local ActionToEventMap = {
	[Action.REQUEST_FRIEND] = Constants.AnalyticsRequestFriendName,
	[Action.CANCEL_REQUEST_FRIEND] = Constants.AnalyticsRevokeFriendshipName,
	[Action.UNFRIEND] = Constants.AnalyticsUnfriendPlayer,
	[Action.ACCEPT_FRIEND] = Constants.AnalyticsAcceptFriendshipRequest,
	[Action.REJECT_FRIEND] = Constants.AnalyticsRevokeFriendshipName,
}

local ActionToName = {
	[Action.REQUEST_FRIEND] = "FriendRequest",
	[Action.CANCEL_REQUEST_FRIEND] =  "CancelFriendRequest",
	[Action.UNFRIEND] =  "Unfriend",
	[Action.ACCEPT_FRIEND] =  "AcceptFriend",
	[Action.REJECT_FRIEND] =  "RejectFriend",
}

local function sendActionAnalytics(action, source)
	SendAnalytics(
		Constants.AnalyticsMenuActionName,
		ActionToEventMap[action] or "",
		{ source = source }
	)
	if action == Action.REQUEST_FRIEND then
		AnalyticsService:ReportCounter(Constants.AnalyticsCounterRequestFriendship)
	end
end

local function invokeRequest(player, action, source)
	local priorStatus = localRequestState[player.UserId]
	if localRequestState[player.UserId] ~= action then
		localRequestState[player.UserId] = action
		stateUpdated:Fire()
	end
	local success = pcall(function()
		if action >= Action.REVOKE_ACTION then
			localPlayer:RevokeFriendship(player)
		else
			localPlayer:RequestFriendship(player)
		end
	end)
	if not success then
		localRequestState[player.UserId] = priorStatus
		stateUpdated:Fire()
	end
	sendActionAnalytics(action, source)
	if debugLog then
		print("invokeRequest:", ActionToName[action], player, success)
	end
end

return {
	Enum = Action,
	setLocalPlayer = function(player)
		localPlayer = player
	end,
	connect = function(callback)
		return stateUpdated.Event:Connect(callback)
	end,
	connectLocalFriendRequestResponce = function(callback)
		return localFriendRequestResponce.Event:Connect(callback)
	end,
	requestingStatus = function(player)
		local id = player.UserId
		return localRequestState[id], friendRequestAccepted[id]
	end,
	requestUnfriend = function(player, source)
		friendRequestAccepted[player.UserId] = nil
		invokeRequest(player, Action.UNFRIEND, source)
	end,
	acceptFriendRequest = function(player, source)
		friendRequestAccepted[player.UserId] = true
		invokeRequest(player, Action.ACCEPT_FRIEND, source)
		localFriendRequestResponce:Fire(player, Action.ACCEPT_FRIEND)
	end,
	rejectFriendRequest = function(player, source)
		friendRequestAccepted[player.UserId] = nil
		invokeRequest(player, Action.REJECT_FRIEND, source)
		localFriendRequestResponce:Fire(player, Action.REJECT_FRIEND)
	end,
	issueFriendRequest = function(player, source)
		friendRequestAccepted[player.UserId] = nil
		invokeRequest(player, Action.REQUEST_FRIEND, source)
	end,
	cancelFriendRequest = function(player, source)
		friendRequestAccepted[player.UserId] = nil
		invokeRequest(player, Action.CANCEL_REQUEST_FRIEND, source)
	end,
	reset = function()
		if next(localRequestState) or next(friendRequestAccepted) then
			localRequestState = {}
			friendRequestAccepted = {}
			stateUpdated:Fire()
		end
	end,
	menuOpenStatusChange = function(menuOpen)
		if menuOpen and not friendStatusConnection then
			friendStatusConnection = localPlayer.FriendStatusChanged:connect(friendStatusChanged)
		elseif not menuOpen and friendStatusConnection then
			friendStatusConnection:disconnect()
			friendStatusConnection = nil
		end
	end
}
